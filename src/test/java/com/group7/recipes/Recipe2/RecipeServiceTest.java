package com.group7.recipes.Recipe2;

import org.hamcrest.CoreMatchers;
import org.hamcrest.core.Is;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.group7.recipes.recipe.Recipe;
import com.group7.recipes.recipe.RecipeRepository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

// Ensure there is no port conflict when running JUnit test
@SpringBootTest
@AutoConfigureMockMvc
public class RecipeServiceTest {
	private static final String RECIPE_URL = "/api/recipe";

	@Autowired
	private RecipeRepository recipeRepository;

	@Autowired
	private MockMvc mockMvc;


	@Test
	public void getAllRecipes() throws Exception {
		// when - action
		ResultActions response = mockMvc.perform(MockMvcRequestBuilders.get(RECIPE_URL));


		var recordCount = (int) recipeRepository.count();
		
		// then - verify the output
		response.andExpect(MockMvcResultMatchers.status().isOk());
		response.andExpect(MockMvcResultMatchers.jsonPath("$.size()", CoreMatchers.is(recordCount)));
	}

	@Autowired
	private ObjectMapper objectMapper;

    @Test
    public void addRecipe() throws Exception {
			// given - setup or precondition
			Recipe recipe = Recipe.builder()
				.title("the test recipe")
				.body("The body of the test recipe. Long enough to pass the check.")
				.source("Actually I forgot the link")
				.servings(2)
				.image("no image")
				.build();
			String recipeAsJson = objectMapper.writeValueAsString(recipe);

			// when - action
			var request = MockMvcRequestBuilders.post(RECIPE_URL);
			request.contentType(MediaType.APPLICATION_JSON);
			request.content(recipeAsJson);
			ResultActions response = mockMvc.perform(request);

			var stringResponse = response.andReturn().getResponse().getContentAsString();
			// then - verify the output
			int returnId = Integer.parseInt(stringResponse);

			response.andExpect(MockMvcResultMatchers.status().isOk());
			assertNotEquals(returnId, recipe.getId());
    }

    @Test
    public void addRecipeValidationFail() throws Exception {
		// given - setup or precondition
		Recipe recipe = Recipe.builder()
				.title("the test recipe")
				.body("A short body")
				.source("Actually I forgot the link")
				.servings(2)
				.image("no image")
				.build();
		String studentAsJson = objectMapper.writeValueAsString(recipe);

		long beforeSize = recipeRepository.count();

		// when - action
		var request = MockMvcRequestBuilders.post(RECIPE_URL+"/validated");
		request.contentType(MediaType.APPLICATION_JSON);
		request.content(studentAsJson);
		ResultActions response = mockMvc.perform(request);

		var jsonResponse = response.andReturn().getResponse().getContentAsString();

		response.andExpect(MockMvcResultMatchers.status().isBadRequest());
		// response.andExpect(MockMvcResultMatchers.jsonPath("$.email", Is.is("must not be blank")));
    }

    @Test
    public void addStudentValidationPass() throws Exception {
			// given - setup or precondition
			Recipe recipe = Recipe.builder()
				.title("the test recipe")
				.body("A body that is long enough to pass.")
				.source("Actually I forgot the link")
				.servings(2)
				.image("no image")
				.build();
			String studentAsJson = objectMapper.writeValueAsString(recipe);

			long beforeSize = recipeRepository.count();

			// when - action
			var request = MockMvcRequestBuilders.post(RECIPE_URL+"/validated");
			request.contentType(MediaType.APPLICATION_JSON);
			request.content(studentAsJson);
			ResultActions response = mockMvc.perform(request);

			var stringResponse = response.andReturn().getResponse().getContentAsString();

			response.andExpect(MockMvcResultMatchers.status().isOk());
			assertNotEquals(stringResponse, String.format("new id is %d", recipe.getId()));
    }



	@Test
    public void removeStudent() throws Exception {
		// given - setup or precondition
		long beforeSize = recipeRepository.count();

		// when - action
		var request = MockMvcRequestBuilders.delete(RECIPE_URL+"/1");
		ResultActions response = mockMvc.perform(request);

		long afterSize = recipeRepository.count();

		response.andExpect(MockMvcResultMatchers.status().isOk());
		assertEquals(beforeSize - 1, afterSize);
  }



}
