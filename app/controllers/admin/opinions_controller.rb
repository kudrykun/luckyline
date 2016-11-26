class Admin::OpinionsController < ApplicationController
  layout 'admin'
  before_action :set_opinion, only: [:show, :edit, :update, :destroy]
  def index
    @opinions = Opinion.all
  end

  def show
  end

  def new
    @opinion = Opinion.new
  end

  def edit
  end

  def create
    @opinion = Opinion.create(opinion_params)
    redirect_to admin_opinion_path(@opinion)
  end

  def update
    @opinion.update(opinion_params)
    redirect_to admin_opinion_path(@opinion)
  end

  def destroy
    Opinion.find(params[:id]).destroy
    redirect_to :back
  end

  private

  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  def opinion_params
    params.require(:opinion).permit(:name,:text,:info,:order_number)
  end
end
