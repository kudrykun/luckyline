class Opinion < ApplicationRecord
  has_attached_file :image, styles: {for_show: "800x800",for_grid: "450x450>", thumb: "150x150>", }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true, format: {with: /\A[а-яА-ЯЁё]{3,15}\Z/,
                                            message:'Only Cyrillic, in range beetween 3..15'}
  validates :text, presence: true, length: {in: 10..500}

  validates :vk, format: {with: /\A((https:\/\/vk\.com\/id[\d]+)|(https:\/\/vk\.com\/[a-zA-Z\d_]+)|)\Z/}

  validates :ok, format: {with: /\A((https:\/\/ok\.ru\/profile\/[\d]+)|(https:\/\/ok\.ru\/[a-zA-z\d\.]{5,})|)\Z/}
end
