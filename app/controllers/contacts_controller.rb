class ContactsController < ApplicationController
  def show
    set_meta_tags title: 'Контакты салона мебели в Мытищах',
                  description: 'Описание контактов'
  end
end
