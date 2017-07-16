class Opinion < ApplicationRecord
  has_many :pictures, as: :imageable, dependent: :destroy

  validates :name, presence: true, format: {with: /\A[а-яА-ЯЁё]{3,15}\Z/,
                                            message:'Only Cyrillic, in range beetween 3..15'}
  validates :text, presence: true, length: {in: 10..500}

  validates :vk, format: {with: /\A((https:\/\/vk\.com\/id[\d]+)|(https:\/\/vk\.com\/[a-zA-Z\d_]+)|)\Z/}

  validates :ok, format: {with: /\A((https:\/\/ok\.ru\/profile\/[\d]+)|(https:\/\/ok\.ru\/[a-zA-z\d\.]{5,})|)\Z/}
end
