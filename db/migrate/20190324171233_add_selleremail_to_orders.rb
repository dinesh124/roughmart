class AddSelleremailToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :selleremail, :string
  end
end
