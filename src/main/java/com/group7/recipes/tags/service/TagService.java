package com.group7.recipes.tags.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.group7.recipes.tags.models.Tag;
import com.group7.recipes.tags.repository.TagRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import lombok.extern.log4j.Log4j2;

@RestController
@ApiResponse(responseCode = "200", description = "valid response",
    content = {@Content(mediaType="application/json", schema=@Schema(implementation=Tag.class))})
@RequestMapping("api/tag")
@io.swagger.v3.oas.annotations.tags.Tag(name = "Tag", description = "Its all about the tag")
@Log4j2
public class TagService {
    @Autowired
    private TagRepository repo;

    @GetMapping
    @Operation(summary= "Returns all tags")
    @ApiResponse(responseCode = "200", description = "valid response", 
        content = {@Content(mediaType="application/json", schema=@Schema(implementation=Tag.class))})
    public List<Tag> list() {
        log.traceEntry("Entering TagsService::list");
        var retval = repo.findAll();
        log.traceExit("Exit TagsService::list() returning {} items", retval.size());
        return retval;
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
