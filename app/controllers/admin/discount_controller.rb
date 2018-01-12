class Admin::DiscountController < Admin::AdminController
  def index
    @galleries = Gallery.all.where(category: Category.find_by(title: 'discount')).order(updated_at: :desc)
  end
end
