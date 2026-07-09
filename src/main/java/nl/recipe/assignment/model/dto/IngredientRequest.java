package nl.recipe.assignment.model.dto;

import jakarta.validation.constraints.NotNull;

public record IngredientRequest(
        @NotNull(message = "Product is required") Integer productId,
        String amount
) { }
