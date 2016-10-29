class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :number_of_news

  private
  def number_of_news
    @number_of_news = NewsItem.all.size
  end
end
