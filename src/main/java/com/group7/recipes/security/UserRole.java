package com.group7.recipes.security;
import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;

import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;

@Data
@Document(collection = "UserRoles")
public class UserRole {
  @Id
  private Integer id;

  @Enumerated(EnumType.STRING)
  @Column(length = 20)
  private UserRoleType name;
}