class OrderMailer < ApplicationMailer

  def order_notice(order)
    @order = order
    if @order.image.exists?
    attachments.inline["#{@order.id}"] = {content: File.read(@order.image.path),mime_type: "image/png"}
    end
    mail(to: 'luckyteam@lucky-line-mebel.ru',subject: 'НОВАЯ ЗАЯВКА')

  end
  def subscriber_notice(order)
    @order = order
    mail(to: @order.email, subject: 'Заявка на сайте Lucky Line')
  end
end
