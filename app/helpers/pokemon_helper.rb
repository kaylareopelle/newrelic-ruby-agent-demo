module PokemonHelper
  def background_color_by_poketype(poketype)
    # binding.irb
    first_type = poketype.split(", ")[0]
    case first_type
    when 'fire'
      'bg-orange-100'
    when 'electric'
      'bg-amber-200'
    when 'grass'
      'bg-green-200'
    when 'poison'
      'bg-purple-200'
    when 'water'
      'bg-sky-200'
    when 'bug'
      'bg-lime-200'
    when 'ground'
      'bg-yellow-500'
    when 'psychic'
      'bg-violet-100'
    when 'fairy'
      'bg-rose-200'
    when 'fighting'
      'bg-orange-300'
    when 'rock'
      'bg-orange-200'
    else
      'bg-slate-200'
    end
  end
end
