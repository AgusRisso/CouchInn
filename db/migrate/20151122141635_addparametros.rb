class Addparametros < ActiveRecord::Migration
  def change
  	add_column :lodgings, :url, :string
  	add_column :lodgings, :user_id, :integer
  end
end
