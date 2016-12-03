class OpinionsController < ApplicationController
  def index
    @opinions = Opinion.all.page(params[:page]).per(5)
    @opinion = Opinion.new
  end

  def show
    @opinion = Opinion.find(params[:id])
  end

  def create
    @opinion = Opinion.new(opinion_params)
    if FinishedOrder.exists?(order_number: params[:order_number].to_i)
      @opinion.save
      redirect_to :back, notice: 'Item was successfully created.'
    else
      redirect_to :back, notice: 'Item was not created.'
    end
  end

  private
  def opinion_params
    params.require(:opinion).permit(:name,:text,:info,:order_number)
  end
end
