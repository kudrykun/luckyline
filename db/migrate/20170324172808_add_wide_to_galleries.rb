class AddWideToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :wide, :boolean
  end
end
