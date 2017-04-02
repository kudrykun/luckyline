class Gallery < ApplicationRecord
  #Use this for really simple search througth one model
  include PgSearch
  pg_search_scope :search_everywhere, against: [:title]
  belongs_to :category
  belongs_to :preview, class_name: 'Picture'

  #It is help to make nice routes
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  has_many :pictures, as: :imageable, dependent: :destroy
  def slug_candidates
    [
        :title,
        [:title, :category_id]
    ]
  end
end
