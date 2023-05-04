package com.group7.recipes.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group7.recipes.model.Tags;
/**
 * Example of adding additional finders
 */
public interface TagRepository extends JpaRepository<Tags, Long> {
  public List<Tags> findByNameStartingWith(String prefix);
}
