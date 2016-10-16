class CreateOpinions < ActiveRecord::Migration[5.0]
  def change
    create_table :opinions do |t|
      t.string :name
      t.text :text
      t.text :info

      t.timestamps
    end
  end
end
