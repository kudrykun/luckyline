class AddAttachmentImageToDecorationPictures < ActiveRecord::Migration[5.0]
  def self.up
    change_table :decoration_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :decoration_pictures, :image
  end
end
