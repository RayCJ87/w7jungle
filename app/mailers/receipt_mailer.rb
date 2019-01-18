class ReceiptMailer < ApplicationMailer

  layout 'mailer'

  def receipt_email(user, order)
    @user = user
    @order = order
    @lineitems = LineItem.where(order_id: @order.id)
    mail(to: @user.email, subject: @order.id)

  end
end
