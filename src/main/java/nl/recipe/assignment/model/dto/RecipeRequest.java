package nl.recipe.assignment.model.dto;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;

import java.util.List;

public record RecipeRequest(
        String name,
        String description,
        Integer servings,
        @NotNull(message = "Author is required") Integer authorId,
        List<Integer> contributorIds,
        @Valid List<IngredientRequest> ingredients
) { }
