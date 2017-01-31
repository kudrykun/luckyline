class DropFinishedOrders < ActiveRecord::Migration[5.0]
  def change
    drop_table :finished_orders
  end
end
