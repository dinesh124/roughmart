class Ahoy::Event < ApplicationRecord
  include Ahoy::QueryMethods
    include Ahoy::Properties
  self.table_name = "ahoy_events"

  belongs_to :visit
  belongs_to :user, optional: true
  
end
