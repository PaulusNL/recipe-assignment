package nl.recipe.assignment.controller;

import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.service.RecipeService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class SampleController {

    private final RecipeService recipeService;

    @Operation(summary = "Sample endpoint description")
    @GetMapping("/temp")
    public List<RecipeDto> temp() {
        return recipeService.getRecipes();
    }
}
