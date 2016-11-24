class Admin::OpinionsController < ApplicationController
  layout 'admin'
  def index
    @opinions = Opinion.all
  end

  def show
    @opinion = Opinion.find(params[:id])
  end

  def destroy
    Opinion.find(params[:id]).destroy
    redirect_to :back
  end
end
