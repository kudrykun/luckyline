class AddMetaToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :meta_title, :string
    add_column :categories, :meta_description, :string
  end
end
