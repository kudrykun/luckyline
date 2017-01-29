class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_one :item
  has_one :category
  has_one :gallery
  has_attached_file :image, styles: {for_show: "800x800",for_grid: "450x450>", thumb: "150x150>", }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
