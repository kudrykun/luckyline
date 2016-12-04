class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :parent, class_name: "Category"
  has_many :subs, :foreign_key => "parent_id", class_name: "Category"
  has_many :items
  has_many :galleries
end