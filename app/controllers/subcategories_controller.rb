class SubcategoriesController < ApplicationController
  def index
    @category = Category.friendly.find(params[:category_id])
    @subcategories = @category.subcategories
  end
end
