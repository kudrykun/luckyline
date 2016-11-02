class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :subcategories, dependent: :destroy

  validates :name, presence: true
end
