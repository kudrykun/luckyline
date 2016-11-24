class Admin::NewsItemsController < ApplicationController
  layout 'admin'
  def index
    @news_items = NewsItem.all
  end

  def show
    @news_item = NewsItem.find(params[:id])
  end

  def destroy
    NewsItem.find(params[:id]).destroy
    redirect_to :back
  end
end
