class CategoriesController < ApplicationController
  def index
    @categories = Category.friendly.where(parent: nil)
  end
  def show
    @category = Category.friendly.find(params[:id]);
    @categories = @category.subs
    @items = @category.items
    @galleries = @category.galleries
  end
end
