package com.group7.recipes.recipe;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Example of adding additional finders
 */
public interface CommentRepository extends JpaRepository<Comment, Long> {
  List<Comment>  findByContentContaining(String someContent);
}
