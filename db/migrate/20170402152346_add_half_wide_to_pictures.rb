class AddHalfWideToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :half_wide, :boolean
  end
end
