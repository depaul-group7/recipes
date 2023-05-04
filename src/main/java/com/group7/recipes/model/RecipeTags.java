package com.group7.recipes.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table (name = "\"Recipetags\"")
public class RecipeTags {
    @Id
    private long recipe_id;
    @Id
    private long tags_id;

    @OneToOne (cascade = CascadeType.ALL)
    @JoinColumn(name="recipe_id", referencedColumnName = "id")
    private Recipe recipe;

    @OneToOne (cascade = CascadeType.ALL)
    @JoinColumn(name="tags_id", referencedColumnName = "id")
    private Tags tags;
}
