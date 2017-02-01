class CategoriesController < ApplicationController
  def index
    set_meta_tags title: 'Каталог Lucky Line – мебель в Москве, Мытищах и Московской области',
                  description: 'Каталог мебельного магазина Lucky Line в Мытищах – купить кухни от фабрики, цены, фото работ'
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
