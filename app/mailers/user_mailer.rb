class UserMailer < ActionMailer::Base
  default from: "sales@goprocarepackage.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order_confirmation.subject
  #
  def order_confirmation(current_user)
    mail to: current_user.email, subject: "Order Confirmation"
  end
end
