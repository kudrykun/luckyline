class Item < ApplicationRecord
  has_many :item_images, dependent: :destroy
  has_many :item_colors, dependent: :destroy
end
