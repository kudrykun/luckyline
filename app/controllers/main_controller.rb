class MainController < ApplicationController
  def index
    set_meta_tags title: 'Lucky-line - мебель для жизни',
                  description: 'Описание для главной'
    @items = Item.all.sample(4)
  end
end
