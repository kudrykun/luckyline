class CreateFinishedOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :finished_orders do |t|
      t.integer :order_number

      t.timestamps
    end
  end
end
