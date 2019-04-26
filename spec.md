# Specifications for the Rails Assessment

Specs:
- [X] Using Ruby on Rails for the project
- [X] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    Leagues have many Fleets

- [X] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    Fleets belong to Leagues

- [X] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    Leagues have many Users through Fleets
    Users has many Ships through Fleets

- [X] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    Fleets have many Ships through Voyages, Ships has many Fleets through Voyages

- [X] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    Voyages also accept 4 other attributes: Departure Port, Arrival Port, Distance, and Cargo

- [X] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    All attributes have at least presence validation with the exception of attributes in the Voyage join table

- [X] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  /voyages/most_recent

- [X] Include signup (how e.g. Devise)
  Sign Up requires username, email address, and password (stored securely using bcrypt)

- [X] Include login (how e.g. Devise)
  Login using username and password

- [X] Include logout (how e.g. Devise)
  Log out button destroys user_id from session, becomes visible once logged in

- [X] Include third party signup/login (how e.g. Devise/OmniAuth)
  Using Facebook via OmniAuth

- [X] Include nested resource show or index (URL e.g. users/2/recipes)
  ships are nested beneath fleets

- [X] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
  Voyages are nested beneath fleets/ships

- [X] Include form display of validation errors (form URL e.g. /recipes/new)
  If error saving object, new is reloaded and error message displayed for all classes

Confirm:
- [X] The application is pretty DRY
- [X] Limited logic in controllers
- [X] Views use helper methods if appropriate
- [X] Views use partials if appropriate
