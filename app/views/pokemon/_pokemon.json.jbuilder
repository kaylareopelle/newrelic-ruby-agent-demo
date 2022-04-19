json.extract! pokemon, :id, :name, :level, :poketype, :notes, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
