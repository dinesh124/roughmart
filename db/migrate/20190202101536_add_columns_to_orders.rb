class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :name, :string
    add_column :orders, :mobile, :integer
    add_column :orders, :PinCode, :integer
    add_column :orders, :Landmark, :string
  end
end
