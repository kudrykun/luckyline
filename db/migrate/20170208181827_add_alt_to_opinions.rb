class AddAltToOpinions < ActiveRecord::Migration[5.0]
  def change
    add_column :opinions, :alt, :string
  end
end
