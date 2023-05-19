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
import lombok.ToString;
import jakarta.validation.constraints.NotBlank;

@Data
@Entity
@Table(name = "\"Tag\"")
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Tag {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;
  @NotBlank
  private String name;

  @Column(name = "user_id")
  private String userId;

  // private User user;

  private String description;

  public String ToString(){
    return "id: " + this.id + " name: " + " userId: " + this.userId;
  }

  private int type;
  private boolean isParent_p;
  private long parentId;
  private long ethnicTagId;
  private boolean defined_p;
}