class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged
end
