class User
	attr_acessor :email,:name,:age,:college,:curso, :name_disciplina, :teacher_disciplina, :nota
	def initialize(name,email,age,college,curso)
		@name = name
		@email = email
		@age = age
		@college = college
		@curso = curso
	end
	def inserirDisciplina(name_disciplina,teacher_disciplina)
		@name_disciplina = name_disciplina
		@teacher_disciplina = teacher_disciplina
	end
	def avaliarDisciplina(disciplina,teacher,nota)
		@disciplina = disciplina
		@teacher = teacher
		@nota = nota
	end
end

class Teacher #Disciplina é uma lista e curso também é um lista
	attr_acessor :name, :disciplina, :curso, :college
	def initialize(name,disciplina,curso,college)
		@name = name
		@disciplina = disciplina
		@curso = curso
		@college = college
	end
end



