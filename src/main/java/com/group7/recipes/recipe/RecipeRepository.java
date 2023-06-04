package com.group7.recipes.recipe;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.group7.recipes.security.User;


/**
 * Example of adding additional finders
 */
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
  List<Recipe> findByIsPrivate(Boolean isPrivate);
  List<Recipe> findByCreator(User creator);
}
