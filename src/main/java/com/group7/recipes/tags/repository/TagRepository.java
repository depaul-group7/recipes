package com.group7.recipes.tags.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.group7.recipes.tags.models.Tag;
/**
 * Example of adding additional finders
 */
public interface TagRepository extends JpaRepository<Tag, Long> {
}
