class AddOrderNumberToOpinions < ActiveRecord::Migration[5.0]
  def change
    add_column :opinions, :order_number, :integer
  end
end
