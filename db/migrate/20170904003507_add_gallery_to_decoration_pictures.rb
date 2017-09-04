class AddGalleryToDecorationPictures < ActiveRecord::Migration[5.0]
  def change
    add_reference :decoration_pictures, :gallery, foreign_key: true
  end
end
