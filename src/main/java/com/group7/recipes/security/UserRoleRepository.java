package com.group7.recipes.security;

import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface UserRoleRepository extends MongoRepository<UserRole, Long> {
        Optional<UserRole> findByName(UserRoleType name);
}