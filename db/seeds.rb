
require 'json'
require 'open-uri'



filepath = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

ingredients = JSON.parse(open(filepath).read)["drinks"]
# should give a HASH type object { drinks: [ {"strIngredient1":"Light rum"} ] }

Ingredient.destroy_all

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

# ==> "Light Rum"

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
