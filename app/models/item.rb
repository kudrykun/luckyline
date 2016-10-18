class Item < ApplicationRecord
  belongs_to :subcategory
  has_many :pictures, as: :imageable, dependent: :destroy
  has_many :item_colors, dependent: :destroy
  has_many :orders, dependent: :destroy

  extend FriendlyId
  friendly_id :title, use: :slugged
end
