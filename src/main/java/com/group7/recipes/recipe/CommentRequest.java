package com.group7.recipes.recipe;

import lombok.Data;

@Data
public class CommentRequest {
    private String content;
    private long recipeId;
}
