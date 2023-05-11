package com.group7.recipes.tags;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
/**
 * Example of adding additional finders
 */
public interface TagRepository extends JpaRepository<Tags, Long> {
  public List<Tags> findByNameStartingWith(String prefix);
}
