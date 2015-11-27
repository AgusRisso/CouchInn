class AddEnable < ActiveRecord::Migration
  def change
  	add_column :lodgingtypes, :enable, :boolean
  end
end
