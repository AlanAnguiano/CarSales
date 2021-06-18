class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.string :year
      t.references :dealership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
