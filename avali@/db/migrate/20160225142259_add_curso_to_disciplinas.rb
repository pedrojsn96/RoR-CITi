class AddCursoToDisciplinas < ActiveRecord::Migration
  def change
    add_reference :disciplinas, :curso, index: true, foreign_key: true
  end
end
