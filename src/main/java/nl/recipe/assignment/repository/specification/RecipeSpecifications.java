package nl.recipe.assignment.repository.specification;

import jakarta.persistence.criteria.Root;
import jakarta.persistence.criteria.Subquery;
import nl.recipe.assignment.model.entity.Ingredient;
import nl.recipe.assignment.model.entity.Recipe;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;


public final class RecipeSpecifications {

    // The specifications should return Specification.unrestricted() so they does not participate in matching.

    public static Specification<Recipe> servingsAtLeast(final Integer min) {
        if(min == null) {
            return Specification.unrestricted();
        }

        return (recipe, query, cb) -> cb.greaterThanOrEqualTo(recipe.get("servings"), min);
    }

    public static Specification<Recipe> servingsAtMost(final Integer max) {
        if(max == null) {
            return Specification.unrestricted();
        }

        return (recipe, query, cb) -> cb.lessThanOrEqualTo(recipe.get("servings"), max);
    }

    public static Specification<Recipe> onlyVegetarian(final boolean vegetarian) {
        if(!vegetarian) {
            return Specification.unrestricted();
        }

        return (recipe, query, cb) -> cb.isTrue(recipe.get("vegetarian"));
    }

    public static Specification<Recipe> withoutProducts(final List<Integer> productIds) {
        if (productIds.isEmpty()) {
            return Specification.unrestricted();
        }

        return (recipe, query, cb) -> {
            Subquery<Integer> recipesWithProduct = query.subquery(Integer.class);
            Root<Ingredient> ingredient = recipesWithProduct.from(Ingredient.class);

            recipesWithProduct.select(ingredient.get("recipe").get("id"))
                    .where(ingredient.get("product").get("id").in(productIds));

            return cb.not(recipe.get("id").in(recipesWithProduct));
        };
    }

}
