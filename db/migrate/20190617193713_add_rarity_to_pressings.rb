class AddRarityToPressings < ActiveRecord::Migration[5.2]
  def change
    add_column :pressings, :rarity, :integer
  end
end
