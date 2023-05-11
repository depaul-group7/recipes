package com.group7.recipes.Recipe2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping("/api/recipe")
@Tag(name = "Recipe", description = "Everything about your Recipe")
@Log4j2
public class RecipeService {
    @Autowired
    private RecipeRepository repo;

    @GetMapping
    @Operation(summary = "Returns all the Recipe in the database")
    @ApiResponse(responseCode = "200", description = "valid response", 
        content = {@Content(mediaType="application/json", schema=@Schema(implementation=Recipe.class))})
    public List<Recipe> list() {
        log.traceEntry("Enter list");
        var retval = repo.findAll();
        log.traceExit("Exit list", retval);        
        return repo.findAll();
    }

    @PostMapping
    @Operation(summary = "Save the Recipe and returns the Recipe id")
    public long save(Recipe recipe) {
        log.traceEntry("enter save", recipe);
        repo.save(recipe);
        log.traceExit("exit save", recipe);        
        return recipe.getId();
    }

    @PostMapping("/validated")
    @Operation(summary = "Save the Recipe and returns the Recipe id")
    public ResponseEntity<String> validatedSave(@Valid @RequestBody Recipe recipe) {
        log.traceEntry("enter save", recipe);
        repo.save(recipe);
        log.traceExit("exit save", recipe);
        return ResponseEntity.ok("new id is " + recipe.getId());
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "Delete the Recipe")
    public void delete(@PathVariable("id") long id) {
        log.traceEntry("Enter delete", id);
        repo.deleteById(id);
        log.traceExit("Exit delete");
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
