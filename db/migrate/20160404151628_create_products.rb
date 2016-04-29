class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Title
      t.text :Description
      t.string :Image_url
      t.decimal :price
      t.string :category

      t.timestamps null: false
    end
  end
end
