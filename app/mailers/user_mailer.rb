class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_email(order)
    @order = order
    @url  = 'localhost:3000'
    mail(to: @order.email, subject: "Thanks for your order! #{order.id}")
  end
end