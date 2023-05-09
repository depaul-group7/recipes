package com.group7.recipes.Recipe;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.jdbc.Sql;

// Need to get Autowired to work
@SpringBootTest
// @ActiveProfiles("dev")
// @Sql({"/data-test.sql"})
public class RecipeTest {
    // @Autowired is to leverage Spring to instatiate the RecipeRepository
    @Autowired
    private RecipeRepository repo;

    /**
     * Test create, read, update, and delete
     */
    @Test
    public void testCrud() {
        var recipe = new Recipe();
        recipe.setTitle("MyRecipe");
        recipe.setBody("The body of MyRecipe");
        recipe.setImage("The image of MyRecipe");
        recipe.setServings(2);
        recipe.setSource("One source for MyRecipe");
        var b4Count = repo.count();
        var b4Id = recipe.getId();
        repo.save(recipe);
        var afterCount = repo.count();
        var afterId = recipe.getId();

        // there should be 1 more in the database after the save
        assertEquals(b4Count + 1, afterCount);

        // original id was 0 but afterwards the id was generated and so should not be equal
        assertNotEquals(b4Id, afterId);

        // Scenario of updating source of a recipe
        // Be sure to find the reference from the database before the update
        var updated = repo.findById(afterId).orElse(new Recipe());
        var newSource = "New source for MyRecipe";
        updated.setSource(newSource);
        repo.save(updated);

        var updatedCheck = repo.findById(afterId).orElse(new Recipe());
        assertNotEquals(updatedCheck, recipe);
        assertEquals(newSource, updatedCheck.getSource());

        b4Count = repo.count();
        repo.delete(updatedCheck);
        afterCount = repo.count();
        assertEquals(b4Count - 1, afterCount);

    }

}

