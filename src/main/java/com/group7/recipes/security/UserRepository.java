package com.group7.recipes.security;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
    Optional<User> findByUsername(String username);
  
    Boolean existsByUsername(String username);
  
    Boolean existsByEmail(String email);
}