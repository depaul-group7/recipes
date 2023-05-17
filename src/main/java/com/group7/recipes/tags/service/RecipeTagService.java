package com.group7.recipes.tags.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.group7.recipes.recipe.Recipe;
import com.group7.recipes.tags.models.RecipeTag;
import com.group7.recipes.tags.models.Tag;
import com.group7.recipes.tags.repository.RecipeTagRepository;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import lombok.extern.log4j.Log4j2;

@RestController
@ApiResponse(responseCode = "200", description = "valid response",
    content = {@Content(mediaType="application/json", schema=@Schema(implementation=RecipeTag.class))})
@RequestMapping("api/recipetag")
@io.swagger.v3.oas.annotations.tags.Tag(name = "Tag", description = "Its all about the tag")
@Log4j2
public class RecipeTagService {
    @Autowired
    private RecipeTagRepository repo;

    @GetMapping("/recipe/{id}")
    @Operation(summary = "Get all recipes identifed with provided Tag")
    @ApiResponse(responseCode = "200", description = "valid response", 
        content = {@Content(mediaType="application/json", schema=@Schema(implementation=RecipeTag.class))})
    public List<Recipe> getRecipesByTag(Tag tag) {
        log.traceEntry("Entered RecipeTagService::getRecipesByTag() {}", ()->tag.toString());
        var retval = this.repo.findByTags(tag)
                        .stream()
                        .map(RecipeTag::getRecipe)
                        .collect(Collectors.toList());
        log.traceExit("Exit RecipeTagService::getRecipesByTag() with count: {}", retval.size());
        return retval;
    }

    @GetMapping("/tag/{id}")
    @Operation(summary = "Get all tags associate with provided recipe")
    @ApiResponse(responseCode = "200", description = "valid response", 
        content = {@Content(mediaType="application/json", schema=@Schema(implementation=RecipeTag.class))})
    public List<Tag> getTagsByRecipe(Recipe recipe) {
        log.traceEntry("Entered RecipeTagService::getTagsByRecipe() {}", ()->recipe.toString());
        var retval = this.repo.findByRecipe(recipe)
                        .stream()
                        .map(RecipeTag::getTags)
                        .collect(Collectors.toList());
        log.traceExit("Exit RecipeTagService::getTagsByRecipe() with count: {}", retval.size());
        return retval;
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
