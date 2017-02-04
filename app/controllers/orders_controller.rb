class OrdersController < ApplicationController
  def create
      @order = Order.new(order_params)
      respond_to do |format|
        if @order.save
          OrderMailer.order_notice(@order).deliver_later
          if @order.email && @order.email != ''
            OrderMailer.subscriber_notice(@order).deliver_later
          end
          format.js {render :layout => false}
        else
          format.html { redirect_to root_path, notice: 'Order was not successfully created.' }
        end
    end
  end
  private
  def order_params
    params.require(:order).permit(:name,:phone_number,:email,:image)
  end
end
