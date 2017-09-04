class RemoveAttachmentImageFromOpinions < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :opinions, :image
  end
end
