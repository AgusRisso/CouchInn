class RemoveTarjeta < ActiveRecord::Migration
  def change
  	remove_column :users, :tarjeta, :integer
  end
end
