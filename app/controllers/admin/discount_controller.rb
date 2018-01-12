class Admin::DiscountController < Admin::AdminController
  def index
    @galleries = Gallery.all.order(updated_at: :desc)
  end
end
