class AddAttachmentImageToItemColors < ActiveRecord::Migration
  def self.up
    change_table :item_colors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :item_colors, :image
  end
end
