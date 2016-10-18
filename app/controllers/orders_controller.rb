class OrdersController < ApplicationController
  def create
    @item = Item.friendly.find(params[:item_id])
    @order = @item.orders.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to :back, notice: 'Order was successfully created.' }
      else
        format.html { redirect_to root_path, notice: 'Order was not successfully created.' }
      end
    end
  end

  def order_params
    params.require(:order).permit(:name,:phone_number,:email,:item_id)
  end
end
