class NewsItem < ApplicationRecord
  has_attached_file :image, styles: { show:"1000x1000>",large: "400x400#",medium: "300x300#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
end
