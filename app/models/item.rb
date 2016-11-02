class Item < ApplicationRecord
  #Use this for really simple search througth one model
  include PgSearch
  pg_search_scope :search_everywhere, against: [:title, :description]

  #It is help to make nice routes
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :subcategory
  has_many :pictures, as: :imageable, dependent: :destroy
  has_many :item_colors, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :title, :description, presence: true
end
