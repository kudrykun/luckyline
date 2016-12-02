class Admin::OrdersController < Admin::AdminController
  def index
    @orders = Order.all.order(:id)
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    Order.find(params[:id]).destroy
    redirect_to :back
  end

end
