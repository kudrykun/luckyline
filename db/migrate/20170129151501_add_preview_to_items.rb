class AddPreviewToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :preview
  end
end
