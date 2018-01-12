class DiscountController < ApplicationController
  def show
    set_meta_tags title: '', #TODO Добавить title для дисконта
                  description: '' #TODO Добавить description для дисконта

    @discount = Category.find('discount')
    @categories = @discount.categories
    @items = @discount.items
    @galleries = @discount.galleries
  rescue ActiveRecord::RecordNotFound
    @discount = nil
  end
end
