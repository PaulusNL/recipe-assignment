package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.model.entity.Recipe;
import nl.recipe.assignment.model.mapper.RecipeMapper;
import nl.recipe.assignment.repository.RecipeRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RecipeService {

    private final RecipeRepository recipeRepository;
    private final RecipeMapper recipeMapper;

    public List<RecipeDto> getRecipes() {
        return recipeMapper.toDtoList(recipeRepository.findAll());
    }

    public RecipeDto createRecipe(RecipeDto recipeDto) {
        return recipeMapper.toDto(recipeRepository.save(recipeMapper.toEntity(recipeDto)));
    }

    public Optional<RecipeDto> updateRecipe(Integer id, RecipeDto recipeDto) {
        if (!recipeRepository.existsById(id)) {
            return Optional.empty();
        }

        Recipe recipe = recipeMapper.toEntity(recipeDto);
        recipe.setId(id);

        return Optional.of(recipeMapper.toDto(recipeRepository.save(recipe)));
    }

    public void deleteRecipe(Integer id) {
        Optional<Recipe> recipe = recipeRepository.findById(id);
        recipe.ifPresent(recipeRepository::delete);
    }
}
