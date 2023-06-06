/**
 * Tag implementation
 * Managed by Craig Terry
 *
 * Created/configured initial repository and group
 * Created initial models: Recipe, Tags, RecipeTags, and User models
 * Created code that implements tag operations providing filtering of recipes based on predefined items
 * Designed a unique tags implementation
 * @see Tag identifies the category for each type of recipe and ingredient
 * @see RecipeTag ties/associates recipes to tags and tags to recipes
 * @see RecipeTagRepository for java interface that extends CrudRepository interfase
 * @see TagRepository for java interface that extends CrudRepository interface
 * @see TagService implements REST operations for tags
 * @see RecipeTagService implements REST operations for RecipeTags
 * @see TagTest unit testing tag operation
 * @see TagServiceTest unit testing Tag REST services
 * Designing initial html (index.html)
 * Tags was designed to be more than id/tag name ... I spent the ramp up time configuring a 
 *    tag hierarchy that would provide a very flexible utility.
 * @author Craig Terry
 **/
package com.group7.recipes.tags;
