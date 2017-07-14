class AddVisibleToGallery < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :visible, :boolean, default: true
  end
end
