class Order < ActiveRecord::Base
  validates :name,:PinCode,:mobile,:size,:address, :city,  presence: true

  belongs_to :listing
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"
  
  def paypal_url(return_path)
    values = {
        business: "merchant@gotealeaf.com",
        cmd: "_xclick",
        upload: 1,
        return: "#{Rails.application.secrets.app_host}#{return_path}",
        invoice: id,
        amount: listing.price,
        item_name: listing.name,
        item_number: listing.id,
        quantity: '1'
    }
    "#{Rails.application.secrets.paypal_host}/cgi-bin/webscr?" + values.to_query
  end

   
end
