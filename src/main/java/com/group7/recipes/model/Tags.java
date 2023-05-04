package com.group7.recipes.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.NotBlank;

@Data
@Entity
@Table(name = "\"Tags\"")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Tags {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;
  @NotBlank
  private String name;

  @Column(name = "user_id")
  private String userId;

  // private User user;

  private String description;
}