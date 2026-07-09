package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.RecipeRequest;
import nl.recipe.assignment.model.entity.Recipe;
import nl.recipe.assignment.model.entity.Role;
import nl.recipe.assignment.model.entity.RoleType;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class RoleService {

    private final UserService userService;

    // This translates the author and contributors from request into a List of roles. It allows validation on having always
    // one author, while in the data model we store each user with their role.
    public List<Role> buildRoles(final RecipeRequest request, final Recipe recipe) {
        List<Role> roles = new ArrayList<>();
        roles.add(buildRole(RoleType.AUTHOR, request.authorId(), recipe));

        if (!CollectionUtils.isEmpty(request.contributorIds())) {
            request.contributorIds().forEach(id -> roles.add(buildRole(RoleType.CONTRIBUTOR, id, recipe)));
        }

        return roles;
    }

    private Role buildRole(final RoleType roleType, final Integer userId, final Recipe recipe) {
        Role role = new Role();
        role.setUser(userService.findUserById(userId));
        role.setRecipe(recipe);
        role.setRole(roleType);

        return role;
    }
}
