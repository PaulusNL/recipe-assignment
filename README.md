# Recipe backend assignment

## Project goal
Add, retrieve, update and remove recipes to a database. Filter on these recipes by vegetarian status, number of servings,
(exclusion) specific ingredients. Each recipe has an author and 0-n contributors linked to it. In the future all users related
to a recipe should receive notifications about the recipe.

## Infrastructure
TODO: Description of how this can be publicly running on Azure.
TODO: Describe how a notification service can be included in the future (sending notifications to all contributors of the recipe) 

## API structure and documentation
Visit http://localhost:8080/swagger-ui.html for the full API documentation.

## Data model
Note this was image was created at start as a preparation and differs from implementation slightly.
![img.png](img.png)

## Task list
- ~~Create the data model~~
- ~~Have liquibase load the database and model (h2)~~
- ~~Sample service + controller~~
- ~~Implement data model + repositories~~
- ~~Implement GET + POST + PUT + DELETE methods~~
- ~~Add author and contributor~~
- ~~Add validations for input sanitation~~
- Implement filtering
- Implement pagination

Side note: along the way we'll keep the API documented and tests up-to-date.
Side note: we'll have no UI for the assignment, so I'll include some sample requests that can be fired instead.

## Notes
These are some notes I made along the way on observations and my choices.
- Assignment states 'the code is production ready' but does not speak about authentication (or authorisation). In current
setup the email of a creator or contributor sits along with the recipe. Developing further 'd say this would be linked to
some for of user accounts instead.
- In this assignment everyone can edit each others recipe, not ideal in a production environment. Introducing user accounts 
would allow for features like: owner can approve on edits or approve users that can edit their recipes. Or perhaps users
can clone a base recipe (and even a link can exist to keep everyone informed).
- In the data model I chose to include vegetarian boolean inside the product. In a future version it may start to contain 
other allergenic info such as if it contains nuts. In that case I'd extract the vegetarian and other values into a separate 
table.
- TODO: We'll first include emails directly in the recipe, but it states "the users who have updated it", indicating all users
should be kept not the last contributor.
- Assignment does not speak about volumes of the products. The current data model simply has the products linked with the recipe.
This can be enhanced by introducing a join table such as product_list can be introduced. This could contain the recipe, product
and volume of given product. 
- I have not included profiles but in a real-production scenario deploying on Azure this is required. For example when loading
the test data. Should be done locally (perhaps a test/staging environment) only.
- A project like this that grows could use a better structure like Entity - POJO - DTO. It's overkill for now since this 
is a relatively simple repo so I took just Entity - DTO instead.
- Realised ingredient and amount would fit better instead of product-list and volume. 
- The new proposed HTTP Query method (RFC 10008) solves a lot of issues with long attributes on URLs and the endless GET/POST/PUT 
discussion. Would solve search, filter and pagination a lot better.
- In a user interface I imagine a user creating a recipe by adding a product and then inserting the amount. I won't add dynamic
creation for products right now and instead focus on the recipes. But basically the ingredient list could contain both existing 
and new products. New should be saved first and then the recipe should include them to the final save.
- I am sending back Optionals out of the RecipeService. I made no business validation in here due to time constraints, but 
what should be added is a validation error instead. Now it simply returns an empty and then the response out of the API is 
a Bad Request with no further information for the implementer.
- I've chosen to extract author as an attribute of the Recipe instead of a user list. This allows me to enforce always one
author and 0-n contributors. Tradeoff is some more coding to translate the request into entity, but worth it for both implementer
and validation path I think.
- Ideally i'd split further the repository layers from service layers. For instance the RecipeService now does Entity building
and speaking to the repository. Fine for this assignment but should be different layers. 