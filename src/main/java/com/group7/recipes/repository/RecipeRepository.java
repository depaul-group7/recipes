package com.group7.recipes.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group7.recipes.model.Recipe;
/**
 * Example of adding additional finders
 */
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
}
