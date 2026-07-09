package nl.recipe.assignment.model.mapper;

import nl.recipe.assignment.model.dto.IngredientDto;
import nl.recipe.assignment.model.dto.ProductDto;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.model.entity.Ingredient;
import nl.recipe.assignment.model.entity.Product;
import nl.recipe.assignment.model.entity.Recipe;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface RecipeMapper {

    RecipeDto toDto(Recipe recipe);

    Recipe toEntity(RecipeDto recipeDto);

    List<RecipeDto> toDtoList(List<Recipe> recipes);

    IngredientDto toIngredientDto(Ingredient ingredient);

    ProductDto toProductDto(Product product);
}
