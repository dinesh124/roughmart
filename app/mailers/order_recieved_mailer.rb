class OrderRecievedMailer < ApplicationMailer
default from: "roughmart4me@gmail.com"

  def sample_email(order)
  @order = order
     mail( :to => @order.Email,subject: 'Order has been Recieved')
  end

def seller(order)
  @order = order
     mail( :to => @order.selleremail,subject: 'Order has been Recieved')
  end

  
  
end
