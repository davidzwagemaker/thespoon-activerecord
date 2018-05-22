class AddFoodTypeToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :food_type, :string, default: ''
  end
end
