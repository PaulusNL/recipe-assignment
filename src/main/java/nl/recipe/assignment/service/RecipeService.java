package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.model.mapper.RecipeMapper;
import nl.recipe.assignment.repository.RecipeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RecipeService {

    private final RecipeRepository recipeRepository;
    private final RecipeMapper recipeMapper;

    public List<RecipeDto> getRecipes() {
        return recipeMapper.toDtoList(recipeRepository.findAll());
    }
}
