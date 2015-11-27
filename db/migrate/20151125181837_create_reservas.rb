class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :dateinit
      t.date :dateexit
      t.boolean :confirmate

      t.timestamps
    end
  end
end
