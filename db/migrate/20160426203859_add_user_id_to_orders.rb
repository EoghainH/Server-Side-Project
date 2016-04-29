class AddUserIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :userid, :integer
  end
end
