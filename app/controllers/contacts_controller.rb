class ContactsController < ApplicationController
  def show
    set_meta_tags title: 'контактов тайтл',
                  description: 'Описание контактов'
  end
end
