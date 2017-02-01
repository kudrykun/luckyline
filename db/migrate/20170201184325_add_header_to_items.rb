class AddHeaderToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :header, :string
  end
end
