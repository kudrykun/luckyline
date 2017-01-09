class MainController < ApplicationController
  def index
    set_meta_tags title: 'Главной тайтл',
                  description: 'Описание для главной'
    @items = Item.all.sample(4)
  end
end
