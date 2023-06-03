package com.group7.recipes.Tag;

import org.hamcrest.CoreMatchers;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import org.springframework.test.web.servlet.MockMvc;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.group7.recipes.tags.models.Tag;
import com.group7.recipes.tags.repository.TagRepository;

import static org.junit.jupiter.api.Assertions.assertNotEquals;

@SpringBootTest
@AutoConfigureMockMvc
public class TagServiceTest {
    private static final String TAG_URL = "/api/tag";

    @Autowired
    private TagRepository repo;

    @Autowired
	private MockMvc mockMvc;

    @Test
    public void getAllTags() throws Exception {
        ResultActions response = mockMvc.perform(MockMvcRequestBuilders.get(TAG_URL));

        var tagCount = (int) repo.count();

        response.andExpect(MockMvcResultMatchers.status().isOk());
        response.andExpect(MockMvcResultMatchers.jsonPath("$.size()", CoreMatchers.is(tagCount)));
    }

    @Autowired
    private ObjectMapper objectMapper;
    
    @Test
    public void addTag() throws Exception {
        Tag tag = Tag.builder()
            .tag_id(1001)
            .name("test tag")
            .userId(-1)
            .description("test the tag")
            .type(9)
            .isParent_p(true)
            .parentId(9)
            .ethnicTagId(-1)
            .defined_p(true)
            .build();

        String tagJson = objectMapper.writeValueAsString(tag);

        var request = MockMvcRequestBuilders.post(TAG_URL);
        request.contentType(MediaType.APPLICATION_JSON);
        request.content(tagJson);
        ResultActions response = mockMvc.perform(request);

        var stringResponse = response.andReturn().getResponse().getContentAsString();

        int returnId = Integer.parseInt(stringResponse);

        response.andExpect(MockMvcResultMatchers.status().isOk());
        assertNotEquals(returnId, tag.getId());


    }
}