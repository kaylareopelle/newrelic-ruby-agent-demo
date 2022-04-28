class UpdatePokemonTable < ActiveRecord::Migration[6.1]
  def change
    change_table :pokemon do |t|
      t.string :sprite
      t.rename :level, :hp
    end
  end
end
