class AddMetaToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :meta_title, :string
    add_column :galleries, :meta_description, :string
  end
end
