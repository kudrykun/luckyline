class Admin::DashboardController < Admin::AdminController
  def index
    @discounts_size = Category.find_by(title: 'discount').galleries.size
    if @discounts_size != 0
      @discounts_last_update = Category.find_by(title: 'discount').galleries.order(updated_at: :desc).first.updated_at
    end

    @galleries_size = Gallery.all.size;
    if @galleries_size != 0
      @galleries_last_update = Gallery.all.order(updated_at: :desc).first.updated_at
    end

    @news_items_size = NewsItem.all.size;
    if @news_items_size != 0
      @news_items_last_update = NewsItem.all.order(updated_at: :desc).first.updated_at
    end

    @opinions_size = Opinion.all.size;
    if @opinions_size != 0
      @opinions_last_update = Opinion.all.order(updated_at: :desc).first.updated_at
    end

    @orders_size = Order.all.size;
    if @orders_size != 0
      @orders_last_update = Order.all.order(updated_at: :desc).first.updated_at
    end

    @categories_size = Category.all.size;
    if @categories_size != 0
      @categories_last_update = Category.all.order(updated_at: :desc).first.updated_at
    end

    @users = User.all

    @activity_logs = ActivityLog.all.order(created_at: :desc)
    @activity_logs_size = ActivityLog.where("created_at >= ?", Time.zone.now.beginning_of_day).size
  end
end
