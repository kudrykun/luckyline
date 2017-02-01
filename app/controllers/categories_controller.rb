class CategoriesController < ApplicationController
  def index
    @title = 'Каталог Lucky Line – мебель в Москве, Мытищах и Московской области'
    @description = 'Каталог Lucky Line – мебель в Москве, Мытищах и Московской области'
    @header = 'Каталог Lucky Line'
    set_meta_tags title: @title,
                  description: @description
    @categories = Category.friendly.where(parent: nil)
  end
  def show
    @category = Category.friendly.find(params[:id]);
    @categories = @category.subs
    @items = @category.items
    @galleries = @category.galleries
    set_meta_tags title: @category.meta_title,
                  description: @category.meta_description
  end
end
