class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :address
      t.string :state
		t.string :city
      t.timestamps
    end
  end
end
