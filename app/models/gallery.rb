class Gallery < ApplicationRecord
  belongs_to :category

  #It is help to make nice routes
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :pictures, as: :imageable, dependent: :destroy
  validates :title, presence: true
end
