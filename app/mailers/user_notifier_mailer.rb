class UserNotifierMailer < ApplicationMailer

default :from => 'roughmart4me@gmail.com'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user= user
    mail( :to user.email,
    subject: 'Thanks for signing up for our amazing app',
	:from => 'roughmart4me@gmail.com'
       )
  end
end
