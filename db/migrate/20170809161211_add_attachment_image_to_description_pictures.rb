class AddAttachmentImageToDescriptionPictures < ActiveRecord::Migration
  def self.up
    change_table :description_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :description_pictures, :image
  end
end
