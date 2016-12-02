class Admin::NewsItemsController < Admin::AdminController
  before_action :set_news_item, only: [:show,:edit,:update,:destroy]
  def index
    @news_items = NewsItem.all.order(:id)
  end

  def show
  end

  def new
    @news_item = NewsItem.new
  end

  def edit
  end

  def create
    @news_item = NewsItem.create(news_item_params)
    redirect_to admin_news_item_path(@news_item)
  end

  def update
    @news_item.update(news_item_params)
    redirect_to admin_news_item_path(@news_item)
  end

  def destroy
    @news_item.destroy
    redirect_to :back
  end

  private

  def set_news_item
    @news_item = NewsItem.find(params[:id])
  end

  def news_item_params
    params.require(:news_item).permit(:title,:text)
  end
end
