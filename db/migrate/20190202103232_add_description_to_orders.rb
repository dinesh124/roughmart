class AddDescriptionToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :Description, :string
    add_column :orders, :size, :string
  end
end
