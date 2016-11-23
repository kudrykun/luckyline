class CategoriesController < ApplicationController
  def index
    @categories = Category.friendly.where(parent: nil)
  end
  def show
    @category = Category.friendly.find(params[:id]);
    if @category.is_items
      @items = @category.items
    else
      @categories = @category.subs
    end
  end
end
