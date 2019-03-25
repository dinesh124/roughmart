class ChangeColumnTypeAhoyEvents < ActiveRecord::Migration[5.2]
  def change
change_column :ahoy_events, :properties, 'jsonb USING CAST(properties AS jsonb)'
  end
end
