class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :price
      t.boolean :maunual_transmission
      t.timestamps
    end
  end
end
