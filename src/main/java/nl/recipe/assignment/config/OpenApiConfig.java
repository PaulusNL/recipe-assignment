package nl.recipe.assignment.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI recipeOpenAPI() {
        return new OpenAPI().info(new Info()
                .title("Recipe Assignment backend API")
                .description("Simple REST API for managing recipes.")
                .contact(new Contact()
                        .name("Paul")
                        .email("noreply@recipe-assignment.nl")));
    }
}
