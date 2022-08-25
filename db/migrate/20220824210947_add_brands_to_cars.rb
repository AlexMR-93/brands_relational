class AddBrandsToCars < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :brand, foreign_key: true
  end
end
