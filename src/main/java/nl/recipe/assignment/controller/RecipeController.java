package nl.recipe.assignment.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.service.RecipeService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/recipe")
@RequiredArgsConstructor
public class RecipeController {

    private final RecipeService recipeService;

    @Operation(summary = "Get all recipes")
    @ApiResponse(responseCode = "200", description = "Recipes retrieved")
    @GetMapping
    public List<RecipeDto> getRecipes() {
        return recipeService.getRecipes();
    }

    @Operation(summary = "Create a new recipe")
    @ApiResponse(responseCode = "201", description = "Recipe created")
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public RecipeDto createRecipe(@RequestBody RecipeDto recipeDto) {
        return recipeService.createRecipe(recipeDto);
    }

    @Operation(summary = "Update an existing recipe")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "Recipe updated"),
            @ApiResponse(responseCode = "404", description = "Recipe not found")
    })
    @PutMapping("/{id}")
    public ResponseEntity<RecipeDto> updateRecipe(@PathVariable Integer id, @RequestBody RecipeDto recipeDto) {
        return recipeService.updateRecipe(id, recipeDto)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @Operation(summary = "Delete a recipe")
    @ApiResponse(responseCode = "204", description = "Recipe deleted")
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteRecipe(@PathVariable Integer id) {
        recipeService.deleteRecipe(id);
    }

}