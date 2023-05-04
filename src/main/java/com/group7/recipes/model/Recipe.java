package com.group7.recipes.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "\"Recipe\"")
public class Recipe {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;

  private String title;
  @Column(columnDefinition = "CHARACTER LARGE OBJECT")
  private String body;
  private String source;
  private int servings;
  private String image;
}