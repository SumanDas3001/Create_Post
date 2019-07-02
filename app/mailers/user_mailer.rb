class UserMailer < ApplicationMailer

  def signup_confirmation(email, name)
    @greeting = "Hi #{name}"

    mail to: email, subject: "Sign Up Confirmation"
  end
end
