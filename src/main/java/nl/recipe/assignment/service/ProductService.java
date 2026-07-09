package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.entity.Product;
import nl.recipe.assignment.repository.ProductRepository;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public Product findProductById(final Integer id) {
        return productRepository.findById(id).orElseThrow();
    }
}
