class CategoriesController < ApplicationController
  def show
    @category = Category.friendly.find(params[:id]);
    @categories = @category.subs
    @items = @category.items
    @galleries = @category.galleries.where(visible: true)
    set_meta_tags title: @category.meta_title,
                  description: @category.meta_description
  end
end
