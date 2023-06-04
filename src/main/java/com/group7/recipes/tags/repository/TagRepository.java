package com.group7.recipes.tags.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.group7.recipes.tags.models.Tag;
/**
 * Example of adding additional finders
 */
public interface TagRepository extends CrudRepository<Tag, Long> {

    public List<Tag>findByNameContainingIgnoreCase(@Param("term") String term);
}
