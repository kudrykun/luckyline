class OrdersController < ApplicationController
  def create
    if params[:item_id]
      @item = Item.friendly.find(params[:item_id])
      @order = @item.orders.new(name: params[:order][:name],phone_number: params[:order][:phone_number])
    else
      @order = Order.new(name: params[:name],phone_number: params[:phone_number])
    end
    respond_to do |format|
      if @order.save
        format.js {render :layout => false}
      else
        format.html { redirect_to root_path, notice: 'Order was not successfully created.' }
      end
    end
  end
end
