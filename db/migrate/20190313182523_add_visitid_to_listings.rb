class AddVisitidToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :ahoy_visit_id, :bigint
  end
end
