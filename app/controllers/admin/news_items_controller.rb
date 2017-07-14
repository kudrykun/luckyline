class Admin::NewsItemsController < Admin::AdminController
  before_action :set_news_item, only: [:show,:edit,:update,:destroy]
  def index
    @news_items = NewsItem.all.order(updated_at: :desc)
  end

  def show
  end

  def new
    @news_item = NewsItem.new
  end

  def edit
  end

  def create
    @news_item = NewsItem.create!(news_item_params)
    record_activity(current_user.name + " создал новую акцию " + @news_item.title)
    redirect_to admin_news_items_path
  end

  def update
    @news_item.update(news_item_params)
    record_activity(current_user.name + " обновил акцию " + @news_item.title)
    redirect_to admin_news_item_path(@news_item)
  end

  def destroy
    news_title = @news_item.title
    @news_item.destroy
    record_activity(current_user.name + " удалил акцию " + @news_item.title)
    redirect_to :back
  end

  private

  def set_news_item
    @news_item = NewsItem.find(params[:id])
  end

  def news_item_params
    params.require(:news_item).permit(:title,:text,:meta_title,:meta_description, :image)
  end
end
