class Admin::FinishedOrdersController < Admin::AdminController
  before_action :set_finished_order, only: [:show,:edit,:update,:destroy]
  # GET /items
  # GET /items.json
  def index
    @finished_orders = FinishedOrder.all.order(:id)
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def new
    @finished_order = FinishedOrder.new
  end

  def edit
  end

  def create
    @finished_order = FinishedOrder.create(finished_order_params)
    redirect_to admin_finished_orders_path
  end

  def update
    @finished_order.update(finished_order_params)
    redirect_to admin_finished_order_path(finished_order)
  end

  def destroy
    @finished_order.destroy
    redirect_to admin_finished_orders_path
  end

  private

  def set_finished_order
    @finished_order = FinishedOrder.friendly.find(params[:id])
  end

  def finished_order_params
    params.require(:finished_order).permit(:order_number)
  end
end