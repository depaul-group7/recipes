// package com.group7.recipes.controller;

// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PathVariable;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

// import com.group7.recipes.model.Recipe;
// import com.group7.recipes.service.RecipeService;

// import lombok.Data;

// @Data
// @RestController
// @RequestMapping("api/v1/recipes")
// public class RecipeController {
//     private final RecipeService recipeService;
    
//     public RecipeController(RecipeService recipeService) {
//         this.recipeService = recipeService;
//     }

//     @GetMapping("{id}")
//     public Recipe getRecipeWithId(@PathVariable("id") Integer id) {
//         return recipeService.getRecipeWithId(id);
//     }
// }