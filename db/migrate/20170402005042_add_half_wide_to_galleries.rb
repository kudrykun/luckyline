class AddHalfWideToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :half_wide, :boolean
  end
end
