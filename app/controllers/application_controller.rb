class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :number_of_news,:set_order

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

  def set_order
    @order = Order.new
  end
end
