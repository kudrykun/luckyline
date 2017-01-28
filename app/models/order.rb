class Order < ApplicationRecord
  belongs_to :item

  validates :name, presence: true, format: {with: /\A[а-яА-ЯЁё]{2,15}\Z/}
  validates :phone_number, presence: true, format: {with: /\A((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}\Z/}
end
