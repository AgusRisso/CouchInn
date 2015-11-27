class AddTarjeta < ActiveRecord::Migration
  def change
  	add_column :users, :tarjeta, :string
  end
end
