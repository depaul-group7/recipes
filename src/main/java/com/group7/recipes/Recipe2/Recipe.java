package com.group7.recipes.Recipe2;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.group7.recipes.tags.RecipeTags;

@Data
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Recipe {
  @Id
  @GenericGenerator(name = "recipeIdGenerator", strategy = "increment")
  @GeneratedValue(generator = "recipeIdGenerator")
  private long id;

  private String title;
  @Column(columnDefinition = "CHARACTER LARGE OBJECT")
  @Size(min= 20, message = "make sure you are literally leaving a recipe body")
  private String body;
  private String source;
  private int servings;
  private String image;
  
  @JsonIgnore
  @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe") // maybe CascadeType.REMOVE is enough for you
  private List<RecipeTags> recipetags = new ArrayList<>();
}
