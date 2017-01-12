class AddAltToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :alt, :string
  end
end
