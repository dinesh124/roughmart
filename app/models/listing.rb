class Listing < ApplicationRecord
 mount_uploaders :images, ImageUploader
   serialize :images, JSON # If you use SQLite, add this line.
 mount_uploader :video, VideoUploader  
 validates :name,:description,:price, presence: true 
 
 validates :price, numericality: {greater_than: 0}

 belongs_to :user
 has_many :orders
end
