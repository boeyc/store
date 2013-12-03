class AddInventoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :inventory, :integer, :default => 100
  end
end
