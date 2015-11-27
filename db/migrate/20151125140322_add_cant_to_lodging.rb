class AddCantToLodging < ActiveRecord::Migration
  def change
  	add_column :lodgings, :cantidaddehuespedes, :integer
  end
end
