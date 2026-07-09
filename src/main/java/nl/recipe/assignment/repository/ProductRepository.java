package nl.recipe.assignment.repository;

import nl.recipe.assignment.model.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
