class RemoveIsItemsFromCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :is_items, :boolean
  end
end
