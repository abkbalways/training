class WelcomeMailer < ApplicationMailer

  def send_greetings_notification(user)
    @user = user

    mail to: user.email,
    subject: "Thanks You for Signing up on our site"
  end
  
end
