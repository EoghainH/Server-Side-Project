class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_description
      t.integer :order_quantity
      t.integer :user

      t.timestamps null: false
    end
  end
end
