json.extract! pokemon, :id, :name, :hp, :poketype, :notes, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
