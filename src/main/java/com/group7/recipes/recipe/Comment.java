package com.group7.recipes.recipe;

import org.hibernate.annotations.GenericGenerator;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.ToString;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.group7.recipes.security.User;

@Data
@Entity
public class Comment {
    @Id
    // @GeneratedValue(strategy = GenerationType.IDENTITY)
    @GenericGenerator(name = "commentIdGenerator", strategy = "increment")
    @GeneratedValue(generator = "commentIdGenerator")
    private long id;

    @NotNull
    @NotBlank(message = "The content of Comment may not be blank")
    private String content;

    // @OneToOne
    // private User author;
    
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
    @JsonIdentityReference(alwaysAsId = true)
    @JsonProperty("recipeId")
    private Recipe recipe;   
}
