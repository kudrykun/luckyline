class AddPreviewToGalleries < ActiveRecord::Migration[5.0]
  def change
    add_reference :galleries, :preview
  end
end
