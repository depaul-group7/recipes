package com.group7.recipes.tags.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.group7.recipes.recipe.*;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class RecipeTag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // @Id
    // private long recipe_id;
    // @Id
    // private long tags_id;

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "recipe_id", referencedColumnName = "id")
    private Recipe recipe;
    @JsonBackReference
    public Recipe getRecipe(){
        return recipe;
    }

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "tags_id", referencedColumnName = "id")
    private Tag tags;

}
