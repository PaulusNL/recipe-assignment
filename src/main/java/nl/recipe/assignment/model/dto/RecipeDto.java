package nl.recipe.assignment.model.dto;

import java.util.List;

public record RecipeDto(
        Integer id,
        String name,
        String description,
        Integer servings,
        List<IngredientDto> ingredients
) { }
