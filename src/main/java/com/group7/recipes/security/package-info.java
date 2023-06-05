/**
 * Managed by Hristina Dokic
 * 
 * Created User and User Repo 
 * Creater UserRole and UserRole repo
 * added one to many relationship from user to userrole
 * Created SignUp page to secure the application
 * Created web security configuration
 * Created code that implements the UserDetailsService interface of Spring Security in UserDetailsServicesImpl.
 * Created java code that implements the UserDetails interface of Spring Security. The UserDetails interface is used to provide core user information. Check UserDetailImpl
 * 
 * @see User for user table constraints and columns
 * @see UserRole for user role table and its constraints
 * @see WebSecurityConfig for the security configuration, contains the configuration for Spring Security.
 * @see UserRoleType for the available roles to the user
 * @see RegistrationService for  code that defines a RESTful web service that handles user registration.
 * @see SignupRequest for  Java class that is used for signing up users
 * @see UserTest.java for the test
 * @see UserDetailsServiceImpl for Java class that implements the UserDetailsService interface which is used for loading user-specific data. 
 * @see UserRoleRepository for Java interface that extends the JpaRepository interface which is used for accessing user role data. 
 * @see UserDetailsImpl  for Java class that implements the UserDetails interface which is used for representing a user’s details.
 * @author Hristina Dokic
 */
package com.group7.recipes.security;
