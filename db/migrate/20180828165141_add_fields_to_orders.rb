class AddFieldsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :buyer_id, :integer
    add_column :orders, :seller_id, :integer
	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
