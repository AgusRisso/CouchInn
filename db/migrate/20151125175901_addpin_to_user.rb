class AddpinToUser < ActiveRecord::Migration
  def change
  	add_column :users, :pintarjeta, :integer
    add_column :users, :dueñotarjeta, :string 
  end
end
