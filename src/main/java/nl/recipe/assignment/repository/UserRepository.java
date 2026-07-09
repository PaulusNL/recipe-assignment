package nl.recipe.assignment.repository;

import nl.recipe.assignment.model.entity.AppUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<AppUser, Integer> {
}
