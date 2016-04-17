class CreateStaus < ActiveRecord::Migration
  def change
    create_table :staus do |t|
      t.string :nombre
      t.string :contenido

      t.timestamps null: false
    end
  end
end
