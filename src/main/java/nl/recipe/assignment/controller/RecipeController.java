package nl.recipe.assignment.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeDto;
import nl.recipe.assignment.model.dto.RecipeFilter;
import nl.recipe.assignment.model.dto.RecipeRequest;
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

    @Operation(summary = "Get all recipes (add filters optionally)")
    @Parameters({
            @Parameter(name = "vegetarian", in = ParameterIn.QUERY,
                    description = "Filter whether recipe must be vegetarian",
                    schema = @Schema(type = "boolean"), example = "true"),
            @Parameter(name = "servings", in = ParameterIn.QUERY,
                    description = "Range of 'min,max' to filter on amount of servings (both inclusive)",
                    schema = @Schema(type = "string"), example = "2,4"),
            @Parameter(name = "excludeProducts", in = ParameterIn.QUERY,
                    description = "Comma separated product ids to exclude",
                    schema = @Schema(type = "string"), example = "1,12,30")
    })
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "Recipes retrieved"),
            @ApiResponse(responseCode = "400", description = "Invalid filter")
    })
    @GetMapping
    public List<RecipeDto> getRecipes(@Parameter(hidden = true) @Valid final RecipeFilter filter) {
        return recipeService.getRecipes(filter);
    }

    @Operation(summary = "Create a new recipe")
    @ApiResponses({
            @ApiResponse(responseCode = "201", description = "Recipe created"),
            @ApiResponse(responseCode = "400", description = "Invalid request")
    })
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public RecipeDto createRecipe(final @Valid @RequestBody RecipeRequest request) {
        return recipeService.createRecipe(request);
    }

    @Operation(summary = "Update an existing recipe")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "Recipe updated"),
            @ApiResponse(responseCode = "400", description = "Invalid request"),
            @ApiResponse(responseCode = "404", description = "Recipe not found")
    })
    @PutMapping("/{id}")
    public ResponseEntity<RecipeDto> updateRecipe(final @PathVariable Integer id,
                                                  final @Valid @RequestBody RecipeRequest request) {
        return recipeService.updateRecipe(id, request)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @Operation(summary = "Delete a recipe")
    @ApiResponse(responseCode = "204", description = "Recipe deleted")
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteRecipe(final @PathVariable Integer id) {
        recipeService.deleteRecipe(id);
    }

}