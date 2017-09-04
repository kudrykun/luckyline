class DecorationPicture < ApplicationRecord
  has_attached_file :image, styles: { for_grid: "500x500#", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :gallery
end