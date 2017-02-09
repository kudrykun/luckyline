class RemoveOrderNumberFromOpinions < ActiveRecord::Migration[5.0]
  def change
    remove_column :opinions, :order_number, :integer
  end
end
