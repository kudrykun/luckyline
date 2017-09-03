class CreatePicturesGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures_groups do |t|
      t.string :title
      t.references :gallery, foreign_key: true

      t.timestamps
    end
    add_column :pictures_groups, :slug, :string
    add_index :pictures_groups, :slug, unique: true
  end
end
