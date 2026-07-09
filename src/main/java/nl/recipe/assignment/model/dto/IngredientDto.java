package nl.recipe.assignment.model.dto;

public record IngredientDto(
        ProductDto product,
        String amount
) { }
