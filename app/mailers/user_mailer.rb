class UserMailer < ApplicationMailer
  default from: "katharina.gottwald@gmx.de"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'katharina.gottwald@gmx.de',
         subject: "A new contact form message from #{name}")
  end
end
