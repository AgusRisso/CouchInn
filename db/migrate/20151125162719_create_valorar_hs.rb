class CreateValorarHs < ActiveRecord::Migration
  def change
    create_table :valorar_hs do |t|
      t.integer :user_id
      t.integer :lodging_id
      t.float :promedio
      t.integer :cantidadVotos

      t.timestamps
    end
  end
end
