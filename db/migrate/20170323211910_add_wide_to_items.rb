class AddWideToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :wide, :boolean
  end
end
