package nl.recipe.assignment.model.mapper;

import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.model.entity.Recipe;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface RecipeMapper {

    RecipeDto toDto(Recipe recipe);

    List<RecipeDto> toDtoList(List<Recipe> recipes);
}
