class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :nombre
      t.string :estatus
      t.string :codigo
      t.string :dependencia
      t.datetime :fecha_compra

      t.timestamps null: false
    end
  end
end
