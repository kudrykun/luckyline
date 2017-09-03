class PicturesGroup < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :gallery
  has_many :pictures
end
