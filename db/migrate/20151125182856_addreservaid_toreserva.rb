class AddreservaidToreserva < ActiveRecord::Migration
  def change
  	add_column :reservas, :lodging_id, :integer
    add_column :reservas, :user_id, :integer 
  end
end
