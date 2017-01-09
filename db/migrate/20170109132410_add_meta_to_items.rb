class AddMetaToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :meta_title, :string
    add_column :items, :meta_description, :string
  end
end
