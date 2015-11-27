class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comentario
      t.integer :lodging_id
      t.integer :user_id
      t.text :respuesta

      t.timestamps
    end
  end
end
