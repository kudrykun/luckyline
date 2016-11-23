class AddIsItemsToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :is_items, :boolean
  end
end
