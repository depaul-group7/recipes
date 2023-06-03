package com.group7.recipes.tags.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.group7.recipes.tags.models.Tag;
import com.group7.recipes.tags.repository.TagRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import jakarta.validation.Valid;
import lombok.extern.log4j.Log4j2;

@RestController
@ApiResponse(responseCode = "200", description = "valid response",
    content = {@Content(mediaType="application/json", schema=@Schema(implementation=Tag.class))})
@RequestMapping("api/tag")
@io.swagger.v3.oas.annotations.tags.Tag(name = "Tag", description = "Its all about the tag")
@Log4j2
@Service
public class TagService {
    @Autowired
    private TagRepository repo;
    private List<Tag> allTags;

    @GetMapping
    @Operation(summary= "Returns all tags")
    @ApiResponse(responseCode = "200", description = "valid response", 
        content = {@Content(mediaType="application/json", schema=@Schema(implementation=Tag.class))})
    public Iterable<Tag> findall() {
        //log.traceEntry("Entering TagsService::list");
        Iterable<Tag> returnVal = repo.findAll();
        //log.traceExit("Exit TagsService::list() returning {} items", returnVal.size());
        return returnVal;
    }

    @GetMapping("search")
    @Operation(summary = "Returns set of tags")
    public List<String> search(@RequestParam(value="term", required = false, defaultValue = "") String term) {
        List<String> suggestions = new ArrayList<String>();
        if (term.length() < 3) {
            return suggestions;
        }
        try {
            if (term.length() == 3) {
                allTags = repo.findByNameContainingIgnoreCase(term);
            }
            for (Tag tag : allTags) {
                if (tag.toString().toLowerCase().contains(term.toLowerCase())) {
                    suggestions.add(tag.ToString());
                }
            } 
        } catch (Exception e) {
            e.printStackTrace();
            log.error("Exception in autofill", e);
        };
        return suggestions;
    }

    @DeleteMapping
    @Operation(summary = "Delete the Tag")
    @ApiResponse(responseCode = "200", description = "valid response", 
        content = {@Content(mediaType="application/json", schema=@Schema(implementation=Tag.class))})
    public void delete(long id) {
        log.traceEntry("Entering TagsService::delete {}", ()->id);
        repo.deleteById(id);
        log.traceExit("Exit TagsService::delete()");
    }  
    
    @PostMapping
    @Operation(summary = "Save the tag")
    public long save(Tag tag) {
        log.traceEntry("Entering TagsService::save {}");
        repo.save(tag);
        log.traceExit("Exit TagsService::save {}", tag.toString());
        return tag.getId();
    }

    @PostMapping("/validated")
    @Operation(summary="Save the Comment and returns a tag_id")
    public ResponseEntity<Tag> validatedSave(@Valid @RequestBody Tag tag){
        log.traceEntry("Entering save", tag);
        repo.save(tag);
        log.traceExit("Exiting Save:", tag);
        return ResponseEntity.ok(tag);
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleValidationExceptions(MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach((error) -> {
            String fieldName = ((FieldError) error).getField();
            String errorMessage = error.getDefaultMessage();
            errors.put(fieldName, errorMessage);
        });
        return errors;
    }
}
