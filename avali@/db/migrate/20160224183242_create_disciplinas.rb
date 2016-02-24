class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :name
      t.string :name_prof
      t.float :nota
      t.text :comment

      t.timestamps null: false
    end
  end
end
