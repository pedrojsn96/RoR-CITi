class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :name
      t.string :faculdade

      t.timestamps null: false
    end
  end
end
