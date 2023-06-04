package com.group7.recipes.Tag;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.group7.recipes.tags.repository.TagRepository;

@SpringBootTest
public class TagTest {

    @Autowired
    TagRepository repo;

    @Test
    public void testGet() {
        
    }
}
