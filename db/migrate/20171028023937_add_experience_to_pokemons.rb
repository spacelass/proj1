class AddExperienceToPokemons < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :experience, :integer
  end
end
