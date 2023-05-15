package com.group7.recipes.security;

import java.util.Optional;

//import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRoleRepository extends JpaRepository<UserRole, Long> {
        Optional<UserRole> findByName(UserRoleType name);
}