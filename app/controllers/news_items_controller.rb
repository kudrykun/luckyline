class NewsItemsController < ApplicationController
  def index
    set_meta_tags title: 'Акций тайтл',
                  description: 'Описание акций'
    @news_items = NewsItem.all
  end

  def show
    @news_item = NewsItem.find(params[:id])
    set_meta_tags title: @news_item.meta_title,
                  description: @news_item.meta_description
  end

  private
  def news_items_params
    params.require(:item).permit()
  end
end
