class DeleteItemImage < ActiveRecord::Migration[5.0]
  def change
    drop_table :item_images
  end
end
