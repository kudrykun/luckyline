class Item < ApplicationRecord
  belongs_to :subcategory
  has_many :pictures, as: :imageable, dependent: :destroy
  has_many :item_colors, dependent: :destroy
end
