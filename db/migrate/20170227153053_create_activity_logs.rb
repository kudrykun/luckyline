class CreateActivityLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_logs do |t|
      t.references :user, foreign_key: true
      t.string :browser
      t.string :ip_address
      t.string :note
      t.string :controller
      t.string :action
      t.string :params

      t.timestamps
    end
  end
end
