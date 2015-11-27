class CreateLodgings < ActiveRecord::Migration
  def change
    create_table :lodgings do |t|
      t.string :titulo
      t.text :descripcion
      t.text :detalle
      t.integer :tipo_id
      t.string :zona
      t.integer :usuario_id

      t.timestamps
    end
  end
end
