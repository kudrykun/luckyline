class NewsItem < ApplicationRecord
  has_many :pictures, as: :imageable, dependent: :destroy
end
