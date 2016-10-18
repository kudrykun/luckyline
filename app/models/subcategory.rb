class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :items, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: :slugged
end
