class Order < ApplicationRecord
  belongs_to :item
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true, format: {with: /\A[а-яА-ЯЁё]{2,15}\Z/}
  validates :phone_number, presence: true, format: {with: /\A((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}\Z/}
  validates :city, presence: true, format: {with: /\A[а-яА-ЯЁё]{2,20}\Z/}
  validates :order_text,length: {in: 0..500}
end
