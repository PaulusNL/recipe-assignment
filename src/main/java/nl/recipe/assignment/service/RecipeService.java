package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.model.dto.RecipeRequest;
import nl.recipe.assignment.model.entity.Recipe;
import nl.recipe.assignment.model.mapper.DomainMapper;
import nl.recipe.assignment.repository.RecipeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RecipeService {

    private final RecipeRepository recipeRepository;
    private final RoleService roleService;
    private final IngredientService ingredientService;
    private final DomainMapper domainMapper;

    public List<RecipeDto> getRecipes() {
        return domainMapper.toRecipeDtoList(recipeRepository.findAll());
    }

    public RecipeDto createRecipe(final RecipeRequest request) {
        Recipe recipe = domainMapper.toEntity(request);

        recipe.setRoles(roleService.buildRoles(request, recipe));
        recipe.setIngredients(ingredientService.buildIngredients(request, recipe));

        return domainMapper.toDto(recipeRepository.save(recipe));
    }

    // Transactional so the recipe stays managed across the mutations and save (one unit of work).
    @Transactional
    public Optional<RecipeDto> updateRecipe(final Integer id, final RecipeRequest request) {
        Optional<Recipe> existing = recipeRepository.findById(id);
        if (existing.isEmpty()) {
            return Optional.empty();
        }

        Recipe recipe = existing.get();
        recipe.setName(request.name());
        recipe.setDescription(request.description());
        recipe.setServings(request.servings());

        // Assuming that users could add AND remove elements within the contributors and ingredients. So first a clear()
        // call and then addAll. This is basically a replace all with the input that was given.
        recipe.getRoles().clear();
        recipe.getRoles().addAll(roleService.buildRoles(request, recipe));
        recipe.getIngredients().clear();
        recipe.getIngredients().addAll(ingredientService.buildIngredients(request, recipe));

        return Optional.of(domainMapper.toDto(recipeRepository.save(recipe)));
    }

    public void deleteRecipe(final Integer id) {
        Optional<Recipe> recipe = recipeRepository.findById(id);
        recipe.ifPresent(recipeRepository::delete);
    }
}
