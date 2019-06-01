class CreateHoras < ActiveRecord::Migration[5.2]
  def change
    create_table :horas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
