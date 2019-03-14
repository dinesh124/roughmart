class AddListingidToAhoyvisit < ActiveRecord::Migration[5.2]
  def change
    add_column :ahoy_visits, :listing_id, :integer
  end
end
