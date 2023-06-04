package com.group7.recipes.Recipe;

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
import com.group7.recipes.recipe.Comment;
import com.group7.recipes.recipe.CommentRepository;
import com.group7.recipes.recipe.CommentRequest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders;
import org.springframework.security.core.Authentication;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;

// Ensure there is no port conflict when running JUnit test
@SpringBootTest
@AutoConfigureMockMvc
public class CommentServiceTest {
	private static final String COMMENT_URL = "/api/comment";

	@Autowired
	private CommentRepository commentRepository;

	@Autowired
	private MockMvc mockMvc;

	@Autowired
	private AuthenticationManager authenticationManager;

	@BeforeEach
	public void setupAuthentication() {
			Authentication auth = new UsernamePasswordAuthenticationToken("user1", "user1p");
			Authentication authenticated = authenticationManager.authenticate(auth);
			SecurityContextHolder.getContext().setAuthentication(authenticated);
	}

	@Test
	public void getAllComments() throws Exception {
		// when - action
		ResultActions response = mockMvc.perform(MockMvcRequestBuilders.get(COMMENT_URL));


		var recordCount = (int) commentRepository.count();
		
		// then - verify the output
		response.andExpect(MockMvcResultMatchers.status().isOk());
		response.andExpect(MockMvcResultMatchers.jsonPath("$.size()", CoreMatchers.is(recordCount)));
	}

	@Autowired
	private ObjectMapper objectMapper;

    @Test
    public void addComment() throws Exception {
			// given - setup or precondition
			CommentRequest commentReq = new CommentRequest();
			commentReq.setRecipeId(1);
			commentReq.setContent("Test comment added");
			String commentReqAsJson = objectMapper.writeValueAsString(commentReq);

			// when - action
			var request = MockMvcRequestBuilders.post(COMMENT_URL);
			request.contentType(MediaType.APPLICATION_JSON);
			request.content(commentReqAsJson);

			long beforeSize = commentRepository.count();

			ResultActions response = mockMvc.perform(request);

			long afterSize = commentRepository.count();

			var stringResponse = response.andReturn().getResponse().getContentAsString();
			// then - verify the output
			int returnId = Integer.parseInt(stringResponse);

			response.andExpect(MockMvcResultMatchers.status().isOk());
			assertEquals(beforeSize + 1, afterSize);
    }

    @Test
    public void addCommentValidationFail() throws Exception {
			// given - setup or precondition
			var commentReq = new CommentRequest();
			commentReq.setRecipeId(1);
			commentReq.setContent("");
			String studentAsJson = objectMapper.writeValueAsString(commentReq);

			long beforeSize = commentRepository.count();

			// when - action
			var request = MockMvcRequestBuilders.post(COMMENT_URL+"/validated");
			request.contentType(MediaType.APPLICATION_JSON);
			request.content(studentAsJson);
			ResultActions response = mockMvc.perform(request);

			long afterSize = commentRepository.count();
			var jsonResponse = response.andReturn().getResponse().getContentAsString();
			assertEquals(beforeSize, afterSize);
			response.andExpect(MockMvcResultMatchers.jsonPath("$.violations[0].fieldName", Is.is("content")));
			response.andExpect(MockMvcResultMatchers.jsonPath("$.violations[0].message", Is.is("The content of Comment may not be blank")));
			// response.andExpect(MockMvcResultMatchers.jsonPath("$.content", Is.is("must not be blank")));
    }

    @Test
    public void addStudentValidationPass() throws Exception {
			// given - setup or precondition
			var commentReq = new CommentRequest();
			commentReq.setRecipeId(1);
			commentReq.setContent("A comment could be found by findByContentContaining");
			String studentAsJson = objectMapper.writeValueAsString(commentReq);

			long beforeSize = commentRepository.count();

			// when - action
			var request = MockMvcRequestBuilders.post(COMMENT_URL+"/validated");
			request.contentType(MediaType.APPLICATION_JSON);
			request.content(studentAsJson);
			ResultActions response = mockMvc.perform(request);

			long afterSize = commentRepository.count();
			Comment comment = commentRepository.findByContentContaining("findByContentContaining").get(0);
			var stringResponse = response.andReturn().getResponse().getContentAsString();

			response.andExpect(MockMvcResultMatchers.status().isOk());
			assertEquals(beforeSize + 1, afterSize);
			assertEquals(stringResponse, String.format("new id is %d", comment.getId()));
    }



	@Test
    public void removeComment() throws Exception {
		// given - setup or precondition
		long beforeSize = commentRepository.count();

		// when - action
		var request = MockMvcRequestBuilders.delete(COMMENT_URL+"/1");
		ResultActions response = mockMvc.perform(request);

		long afterSize = commentRepository.count();

		response.andExpect(MockMvcResultMatchers.status().isOk());
		assertEquals(beforeSize - 1, afterSize);
  }



}
