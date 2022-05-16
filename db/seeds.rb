require 'open-uri'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

152.times do |id|
  response = URI.open("http://pokeapi.co/api/v2/pokemon/#{id + 1}/").read
  json = JSON.parse(response)

  name = json["name"]
  hp = json["stats"][1]["base_stat"]
  poketype = json["types"].collect{|t| t["type"]["name"]}&.join(', ')
  sprite = json["sprites"]["front_default"]

  Pokemon.create(
    name: name,
    hp: hp,
    poketype: poketype,
    sprite: sprite
  )
end
