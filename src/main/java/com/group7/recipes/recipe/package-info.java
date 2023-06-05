/**
 * Recipe and Comment
 * Managed by Huanjia Wang
 *
 * <ol>
 * <li>Created Recipe and Comment Repository for Milestone 2
 * <li>Created RecipeTest and CommentTest for Milestone 2
 * <li>Created RecipeService and CommentService, with log integrated, for Milestone 3
 * <li>Created RecipeServiceTest and CommentServiceTest for Milestone 3
 * <li>Added a OneToOne relationship from AccountCurrency to Currencies
 * <li>Added a OneToMany relationship from Recipe to Comment
 * <li>Added a OneToMany relationship from Recipe to RecipeTags
 * <li>Added a Recipe Swagger Documentation
 * <li>Added a Comment Swagger Documentation
 * <li>Integrated swagger into project
 * <li>Added GitHub actions to build jar, to build docker image and push to Docker Hub.
 * <li>Added findByContentContaining to CommentRepository which not discussed in class
 * <li>Added additional query method to RecipeRepository, like findByIsPrivate and findByCreator
 * <li>Added @JsonIgnore @JsonIdentityInfo, @JsonIdentityReference and @JsonProperty on columns not discussed in class
 * <li>Added @JsonManagedReference and @JsonBackReference which is not discussed in class
 * <li>Added @GenericGenerator to avoid conflict with already added ids on the id column not discussed in class
 * <li>Added complex jsonPath related assertion to service tests, e.g "$.violations[0].fieldName" not discussed in class
 * <li>Added additional notes on services for swagger
 * <li>Create RecipeController for Milestone 4
 * <li>Added three mustache template(overview, noRecipePage, detail) for Milestone 4
 * <li>Added mustache as server side template engine which is not discussed in class
 * <li>Added conditional rendering logic in UI layer according to whether the user is admin which is not discussed in class
 * <li>Added org.springframework.security:spring-security-test to project to login before each of the test begins which is no discussed in class
 * <li>Added SecurityContextHolder to RecipeController to get info of the current user who has logged in which is not disscussed in class
 
* </ol>
 * @see Recipe for recipe data
 * @see Comment for comments on recipe
 * @see RecipeTest for recipe unit tests
 * @see CommentTest for comment unit tests
 * @see RecipeService for recipe related service
 * @see CommentService for comment related service
 * @see RecipeServiceTest for recipe related service tests
 * @see CommentServiceTest for comment related service tests
 * @see RecipeController for controller for recipe related pages
 * @see overview.mustache for recipe overview page
 * @see noRecipePage.mustache for if there is no recipe found
 * @see detail.mustache for cecipe detail page
 * @see application-dev.yml for logging details
 * @see <a href=" ">Quick Start</a >
 * @see <a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/">Reference</a >
 * @see <a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#repository-query-keywords">Repository Keywords Guide</a >
 * @see <a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.query-methods.query-creation"></a>
 * @author Huanjia Wang
 */

 package com.group7.recipes.recipe;