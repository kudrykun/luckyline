class AddTextToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order_text, :text
  end
end
