package com.group7.recipes.tags.models;

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

@Data
@Entity
@Table(name = "\"tag\"")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Tag {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;

  private String name;

  @Column(name = "user_id")
  private long userId;

  // private User user;

  private String description;

  private int type;
  private boolean isParent_p;
  private long parentId;
  private long ethnicTagId;
  private boolean defined_p;


  public String ToString(){
    return "id: " + this.id + ", name: " + this.name;
  }
}