package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.IngredientRequest;
import nl.recipe.assignment.model.dto.RecipeRequest;
import nl.recipe.assignment.model.entity.Ingredient;
import nl.recipe.assignment.model.entity.Recipe;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class IngredientService {

    private final ProductService productService;

    public List<Ingredient> buildIngredients(final RecipeRequest request, final Recipe recipe) {
        List<Ingredient> ingredients = new ArrayList<>();

        if (request.ingredients() != null) {
            request.ingredients().forEach(ingredient -> ingredients.add(buildIngredient(ingredient, recipe)));
        }

        return ingredients;
    }

    private Ingredient buildIngredient(final IngredientRequest request, final Recipe recipe) {
        Ingredient ingredient = new Ingredient();

        ingredient.setRecipe(recipe);
        ingredient.setProduct(productService.findProductById(request.productId()));
        ingredient.setAmount(request.amount());

        return ingredient;
    }
}
