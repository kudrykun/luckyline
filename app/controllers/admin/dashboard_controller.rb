class Admin::DashboardController < Admin::AdminController
  def index
    @items_size = Item.all.size;
    @news_items_size = NewsItem.all.size;
    @opinions_size = Opinion.all.size;
    @orders_size = Order.all.size;
    @categories_size = Category.all.size;
  end
end
