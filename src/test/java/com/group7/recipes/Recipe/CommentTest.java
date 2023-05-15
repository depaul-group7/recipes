package com.group7.recipes.Recipe;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.jdbc.Sql;

import com.group7.recipes.recipe.CommentRepository;
import com.group7.recipes.recipe.RecipeRepository;
import com.group7.recipes.recipe.Comment;
import com.group7.recipes.recipe.Recipe;

@DataJpaTest
// @ActiveProfiles("dev")
// @Sql({"/data-test.sql"})
public class CommentTest {
    // @Autowired is to leverage Spring to instatiate the CommentRepository
    @Autowired
    private CommentRepository repo;

    @Autowired
    private RecipeRepository recipeRepo;

    /**
     * Test create, read, update, and delete
     */
    @Test
    public void testCrud() {
        var comment = new Comment();
        comment.setContent("Nice recipe!");
        var recipe = recipeRepo.findById((long)1).orElse(new Recipe());;
        comment.setRecipe(recipe);
        var b4Count = repo.count();
        var b4Id = comment.getId();
        repo.save(comment);
        
        var afterCount = repo.count();
        var afterId = comment.getId();

        // there should be 1 more in the database after the save
        assertEquals(b4Count + 1, afterCount);

        // original id was 0 but afterwards the id was generated and so should not be equal
        assertNotEquals(b4Id, afterId);

        // Scenario of updating source of a recipe
        // Be sure to find the reference from the database before the update
        var updated = repo.findById(afterId).orElse(new Comment());
        var newComment = "New content for the comment";
        updated.setContent(newComment);
        repo.save(updated);

        var updatedCheck = repo.findById(afterId).orElse(new Comment());
        assertNotEquals(updatedCheck, comment.getContent());
        assertEquals(newComment, updatedCheck.getContent());

        b4Count = repo.count();
        repo.delete(updatedCheck);
        afterCount = repo.count();
        assertEquals(b4Count - 1, afterCount);

    }

}

