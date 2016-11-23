class Admin::NewsItemsController < ApplicationController
  layout 'admin'
  def index
    @news_items = NewsItem.all
  end
end
