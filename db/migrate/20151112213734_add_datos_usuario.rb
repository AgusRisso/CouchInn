class AddDatosUsuario < ActiveRecord::Migration
  def change
  	add_column :users, :apellido, :string
  	add_column :users, :zona, :string
  	add_column :users, :edad, :integer
    add_column :users, :telefono, :integer
    add_column :users, :tarjeta, :integer
    add_column :users, :es_admin, :boolean, default: false
    add_column :users, :es_premium, :boolean, default: false
  end
end
