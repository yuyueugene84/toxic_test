class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :Ingredient_ID
      t.string :integer
      t.string :Ingredient_name
      t.string :string
      t.integer :product_id
      t.string :Ingredient_cname
      t.string :Gov_Number
      t.string :string
      t.string :CAS_Number
      t.string :string

      t.timestamps
    end
  end
end
