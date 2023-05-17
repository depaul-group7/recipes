package com.group7.recipes.tags.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group7.recipes.recipe.Recipe;
import com.group7.recipes.tags.models.RecipeTag;
import com.group7.recipes.tags.models.Tag;

public interface RecipeTagRepository extends JpaRepository<RecipeTag, Long>{
    List<RecipeTag> findByTags(Tag tag);
    List<RecipeTag> findByRecipe(Recipe recipe);
}
