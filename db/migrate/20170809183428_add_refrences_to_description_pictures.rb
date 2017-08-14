class AddRefrencesToDescriptionPictures < ActiveRecord::Migration[5.0]
  def change
    add_reference :description_pictures, :gallery, foreign_key: true
  end
end
