package com.group7.recipes.Recipe;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Example of adding additional finders
 */
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
  
}