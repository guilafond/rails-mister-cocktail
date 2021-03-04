
require 'json'
require 'open-uri'



filepath = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(filepath).read)["drinks"]
# should give a HASH type object { drinks: [ {"strIngredient1":"Light rum"} ] }

Ingredient.destroy_all

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


Cocktail.create(name: "Magarita")
Cocktail.create(name: "Bloody Marry")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Wisky on the Rocks")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Mojito fresa")
Cocktail.create(name: "Old fashioned")
Cocktail.create(name: "Singapore sling")




# ==> "Light Rum"

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
