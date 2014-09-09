class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :Product_ID
      t.string :Product_name
      t.string :Product_cname

      t.timestamps
    end
  end
end
