class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :Brand_ID
      t.string :Brand_name
      t.string :Brand_cname

      t.timestamps
    end
  end
end
