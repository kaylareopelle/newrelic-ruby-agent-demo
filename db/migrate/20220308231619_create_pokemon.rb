class CreatePokemon < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemon do |t|
      t.string :name
      t.integer :level
      t.string :poketype
      t.text :notes

      t.timestamps
    end
  end
end
