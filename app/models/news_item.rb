class NewsItem < ApplicationRecord
  has_many :pictures, as: :imageable, dependent: :destroy

  validates :title, :text, presence: true
end
