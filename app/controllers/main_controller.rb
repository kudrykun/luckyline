class MainController < ApplicationController
  def index
    set_meta_tags title: 'Кухни в Мытищах Luckyline: мебель, фурнитура, бытовая техника',
                  description: 'Купить кухни в Мытищах с доставкой по Москве и Московской области по приемлемой цене.
                                  Оценить преимущества магазина LuckyLine и ознакомится с каталогом товаров.'
    @items = Item.all.sample(4)
  end
end
