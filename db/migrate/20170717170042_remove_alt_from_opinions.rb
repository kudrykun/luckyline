class RemoveAltFromOpinions < ActiveRecord::Migration[5.0]
  def change
    remove_column :opinions, :alt, :string
  end
end
