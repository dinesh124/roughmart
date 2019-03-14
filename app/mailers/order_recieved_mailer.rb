class OrderRecievedMailer < ApplicationMailer
default from: "roughmart4me@gmail.com"

  def sample_email(order)
    @order = order
    mail( :to order.Email,subject: 'Thanks for signing up for our amazing app',:from => 'roughmart4me@gmail.com'
       )
  end


end
