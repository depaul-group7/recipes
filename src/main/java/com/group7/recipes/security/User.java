 package com.group7.recipes.security;

 import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.FetchType;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Set;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;


@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="\"User\"")
public class User {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long id;

   @NotBlank
   @Size(max = 20)
   private String username;

   @NotBlank
   @Size(max = 50)
   @Email
   private String email;

   @NotBlank
   @Size(max = 120)
   private String password;

   @OneToMany(fetch = FetchType.EAGER)
   private Set<UserRole> roles;
 }