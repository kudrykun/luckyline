class AddSocialsToOpinions < ActiveRecord::Migration[5.0]
  def change
    add_column :opinions, :vk, :string
    add_column :opinions, :ok, :string
  end
end
