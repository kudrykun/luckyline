class DiscountController < ApplicationController
  def show
    @discount = Category.find_by(title: 'discount')
    @categories = @discount.subs
    @items = @discount.items
    @galleries = @discount.galleries

    set_meta_tags title: @discount.meta_title,
                  description: @discount.meta_description
  end
end
