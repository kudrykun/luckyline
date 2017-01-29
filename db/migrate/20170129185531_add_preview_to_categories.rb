class AddPreviewToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :preview
  end
end
