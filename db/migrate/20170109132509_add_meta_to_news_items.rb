class AddMetaToNewsItems < ActiveRecord::Migration[5.0]
  def change
    add_column :news_items, :meta_title, :string
    add_column :news_items, :meta_description, :string
  end
end
