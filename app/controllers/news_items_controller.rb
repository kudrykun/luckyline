class NewsItemsController < ApplicationController
  def index
    @news_items = NewsItem.all
  end

  def show
    @news_item = NewsItem.find(params[:id])
  end

  private
  def news_items_params
    params.require(:item).permit()
  end
end
