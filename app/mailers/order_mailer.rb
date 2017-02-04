class OrderMailer < ApplicationMailer
  default from: 'luckyteam@lucky-line-mebel.ru'
  def order_notice(order)
    @order = order
    attachments.inline["#{@order.id}"] = File.read(@order.image.path)
    mail(to: 'luckyteam@lucky-line-mebel.ru',subject: 'НОВАЯ ЗАЯВКА')
  end
  def subscriber_notice(order)
    @order = order
    mail(to: @order.email, subject: 'Заявка на сайте Lucky Line')
  end
end
