class CreateDecorationPictures < ActiveRecord::Migration[5.0]
  def change
    create_table :decoration_pictures do |t|
      t.string :alt
      t.string :caption
    end
  end
end
