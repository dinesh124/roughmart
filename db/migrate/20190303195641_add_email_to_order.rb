class AddEmailToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :Email, :string
  end
end
