class Remmoveparametros < ActiveRecord::Migration
  def change
  	remove_column :users, :zona, :string
  	remove_column :lodgings, :usuario_id, :integer
  	remove_column :lodgings, :tipo_id, :integer
  end
end
