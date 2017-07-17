class RemoveInfoFromOpinions < ActiveRecord::Migration[5.0]
  def change
    remove_column :opinions, :info, :text
  end
end
