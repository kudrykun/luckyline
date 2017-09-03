class AddPicturesGroupToPictures < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :pictures_group, foreign_key: true
  end
end
