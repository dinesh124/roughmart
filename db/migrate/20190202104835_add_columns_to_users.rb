class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Biodata, :string
    add_column :users, :mobile, :integer
  end
end
