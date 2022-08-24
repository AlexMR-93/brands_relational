class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table(:brands) do |t|
      t.string(:name)
      t.string(:country_of_origin)
      t.integer(:num_of_models)
      t.boolean(:domestic?)
      t.timestamps
    end
  end
end
