package com.group7.recipes.Tag;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.group7.recipes.tags.models.Tag;
import com.group7.recipes.tags.repository.TagRepository;

@SpringBootTest
public class TagTest {

    @Autowired
    TagRepository repo;

    @Autowired
	private AuthenticationManager authenticationManager;

    @BeforeEach
	public void setupAuthentication() {
			Authentication auth = new UsernamePasswordAuthenticationToken("user1", "user1p");
			Authentication authenticated = authenticationManager.authenticate(auth);
			SecurityContextHolder.getContext().setAuthentication(authenticated);
	}

    @Test
    public void testTagCrud() {
        Tag tag = new Tag();
        tag.setTag_id(9999);
        tag.setName("Test tag");
        tag.setDefined_p(false);
        tag.setUserId(-1);
        tag.setParent_p(false);
        tag.setEthnicTagId(-1);
        tag.setDescription("");

        var b4Count = repo.count();
        var b4Id = tag.getId();
        repo.save(tag);
        var afterCount = repo.count();
        var afterId = tag.getId();

        // there should be 1 more in the database after the save
        assertEquals(b4Count + 1, afterCount);

        // original id was 0 but afterwards the id was generated and so should not be equal
        assertNotEquals(b4Id, afterId);

        // Scenario of updating source of a recipe
        // Be sure to find the reference from the database before the update
        var updated = repo.findById(afterId).orElse(new Tag());
        var newDescription = "New description for MyRecipe";
        updated.setDescription(newDescription);
        repo.save(updated);

        var updatedCheck = repo.findById(afterId).orElse(new Tag());
        assertNotEquals(updatedCheck, tag);
        assertEquals(newDescription, updatedCheck.getDescription());

        b4Count = repo.count();
        repo.delete(updatedCheck);
        afterCount = repo.count();
        assertEquals(b4Count - 1, afterCount);

    }
}
