class AddReferenceToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :subcategory, foreign_key: true
  end
end
