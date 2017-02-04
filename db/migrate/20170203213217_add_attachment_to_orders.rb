class AddAttachmentToOrders < ActiveRecord::Migration[5.0]
  def self.up
    change_table :orders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :orders, :image
  end
end
