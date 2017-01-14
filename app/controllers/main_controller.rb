class MainController < ApplicationController
  def index
    set_meta_tags title: 'Кухни LuckyLine: мебель, в Москве,Мытищах и Московской области',
                  description: 'Кухни LuckyLine в Мытищах от фабрики – купить кухни в Королёве, Фрязино, Пушкино, Балашихе, Щёлково и других городах Московской области. '
    @items = Item.all.sample(4)
    @item1 = @items.first
    @item2 = @items.second
    @item3 = @items.third
    @item4 = @items.fourth
  end
end
