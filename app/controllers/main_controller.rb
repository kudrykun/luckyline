class MainController < ApplicationController
  def index
    @items = Item.all.sample(4)
  end
end
