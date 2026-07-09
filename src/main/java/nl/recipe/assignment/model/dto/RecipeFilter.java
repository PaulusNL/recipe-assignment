package nl.recipe.assignment.model.dto;

import java.util.List;

public record RecipeFilter(Boolean vegetarian,
                           ServingsRange servings,
                           List<Integer> excludeProducts) {

    public RecipeFilter {
        vegetarian = vegetarian != null && vegetarian;
        excludeProducts = excludeProducts == null ? List.of() : excludeProducts;
    }

    public Integer minServings() {
        return servings == null ? null : servings.min();
    }

    public Integer maxServings() {
        return servings == null ? null : servings.max();
    }
}
