class Item < ApplicationRecord
  belongs_to :subcategory
  has_many :item_images, dependent: :destroy
  has_many :item_colors, dependent: :destroy
end
