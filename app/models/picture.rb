class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_one :item
  has_one :category
  has_one :gallery
  has_attached_file :image, styles:
                    lambda { |attachment|
                      { for_show: "800x800#",
                        for_grid: "500x500#",
                        thumb: "150x150#",
                        half_wide: attachment.instance.half_wide?  ? "600x200#" : "0x0#" }
                    },
                    processors: [:thumbnail, :compression]

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
=begin
{for_show: "800x800#",for_grid: "500x500#", thumb: "150x150#" },
=end

#TODO Убрать сжатие