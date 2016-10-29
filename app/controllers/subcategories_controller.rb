class SubcategoriesController < ApplicationController
  def index
    @category = Category.friendly.find(params[:category_id])
    @categories = Category.all
    @subcategories = @category.subcategories
  end
end
