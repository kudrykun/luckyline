class AddHeaderToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :header, :string
  end
end
