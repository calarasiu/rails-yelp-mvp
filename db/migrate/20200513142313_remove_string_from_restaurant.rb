class RemoveStringFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :string 
  end
end
