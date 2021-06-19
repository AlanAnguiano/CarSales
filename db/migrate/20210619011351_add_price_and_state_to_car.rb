class AddPriceAndStateToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :price, :float, null: false
    add_column :cars, :state, :string, null: false
  end
end
