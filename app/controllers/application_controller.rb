class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :number_of_news,:set_order, :categories_for_catalog, :galleries_for_catalog

  protected

  def layout_by_resource
    if devise_controller?
      'admin'
    end
  end

  private
  def number_of_news
    @number_of_news = NewsItem.all.size
  end

  def categories_for_catalog
    @categories_for_catalog = Category.where(parent: Category.find_by(title:'catalog'))
  end
  def galleries_for_catalog
    @galleries_for_catalog = Gallery.where(category_id: Category.find_by(title:'catalog'))
  end

  def set_order
    @order = Order.new
  end
end
