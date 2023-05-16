/**
 * Recipe and Comment
 * Managed by Huanjia Wang
 *
 * <ol>
 * <li>Created Recipe and Comment Repository for Milestone 2
 * <li>Created RecipeTest and CommentTest for Milestone 2
 * <li>Created RecipeService and CommentService for Milestone 3
 * <li>Created RecipeServiceTest and CommentServiceTest for Milestone 3
 * <li>Added a OneToOne relationship from AccountCurrency to Currencies
 * <li>Added a OneToMany relationship from Recipe to Comment
 * <li>Added a OneToMany relationship from Recipe to RecipeTags
 * <li>Added a Recipe Swagger Documentation
 * <li>Added a Comment Swagger Documentation
 * <li>Integrated swagger into project
 * <li>Added GitHub actions to build jar, to build docker image and push to Docker Hub.
 * <li>Added findByContentContaining to CommentRepository not discussed in class
 * <li>Added @JsonIgnore @JsonIdentityInfo, @JsonIdentityReference and @JsonProperty on columns not discussed in class
 * <li>Added @GenericGenerator to avoid conflict with already added ids on the id column not discussed in class
 * <li>Added complex jsonPath related assertion to service tests, e.g "$.violations[0].fieldName" not discussed in class
 * <li>Added additional notes on services for swagger
* </ol>
 * @see Recipe for recipe data
 * @see Comment for comments on recipe pages
 * @see RecipeTest for recipe unit tests
 * @see CommentTest for comment unit tests
 * @see RecipeServiceTest for recipe related service tests
 * @see CommentServiceTest for comment related service tests
 * @see application-dev.yml for logging details
 * @see <a href=" ">Quick Start</a >
 * @see <a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/">Reference</a >
 * @see <a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#repository-query-keywords">Repository Keywords Guide</a >
 * @see <a href="https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.query-methods.query-creation"></a>
 * @author Huanjia Wang
 */

 package com.group7.recipes.recipe;