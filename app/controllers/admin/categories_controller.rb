class Admin::CategoriesController < ApplicationController
  layout 'admin'
  def index
    @categories = Category.all
  end

  def show
    @category = Category.friendly.find(params[:id])
  end

  def destroy
    Category.friendly.find(params[:id]).destroy
    redirect_to :back
  end
end
