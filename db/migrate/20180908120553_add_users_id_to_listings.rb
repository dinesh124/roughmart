class AddUsersIdToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :users_id, :integer
  end
end
