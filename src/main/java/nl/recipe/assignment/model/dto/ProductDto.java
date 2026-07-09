package nl.recipe.assignment.model.dto;

public record ProductDto(
        Integer id,
        String name,
        Boolean vegetarian
) { }
