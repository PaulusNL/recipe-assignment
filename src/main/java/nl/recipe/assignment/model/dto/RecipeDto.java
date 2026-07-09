package nl.recipe.assignment.model.dto;

public record RecipeDto(
        Integer id,
        String name,
        String description,
        Integer servings
) { }