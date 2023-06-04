package com.group7.recipes.user;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;



import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.group7.recipes.security.User;
import com.group7.recipes.security.UserRepository;



@SpringBootTest
public class UserTest {

    @Autowired
    private UserRepository repo;


    @BeforeEach
    public void addUser() {
        var user1 = new User();
        user1.setId(1001L);
        user1.setUsername("user01");
        user1.setEmail("user01@gmail.com");
        user1.setPassword("user01");
        repo.save(user1);
    }


    @Test
    public void sanityCheck() {
        assertTrue(true);
    }

   
    @Test
    public void findUsernameWith1001Id() {
        Boolean userExists = repo.existsById(1001L);
        assertTrue(userExists);
    }

    @Test
    public void findUsernameWith1007Id() {
        Boolean userExists = repo.existsById(1007L);
        assertFalse(userExists);
    }



 
}
