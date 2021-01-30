# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Creating ingredients database
require 'open-uri'
require 'json'

puts "Creating ingredients"

ingredients_api = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
ingredients_list = ingredients_api["drinks"]
ingredients_list.map do |ingredient|
  my_ingredient = Ingredient.create(name: ingredient["strIngredient1"])
  puts "Ingredient #{my_ingredient.id} has been created"
end

puts "Done"
