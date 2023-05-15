package com.group7.recipes.security;

import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SignupRequest {
    private String username;
 
    private String email;
    
    private Set<String> role;
    
    private String password;
}
