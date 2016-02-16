class User
	attr_acessor :email,:name,:age,:college,:curso, :name_disciplina, :teacher_disciplina, :nota
	def initialize(email,name,age,college,curso)
		self.email = email
		self.name = name
		self.age = age
		self.college = college
		self.curso = curso
	end
	def inserirDisciplina(name_disciplina,teacher_disciplina)
		self.name_disciplina = name_disciplina
		self.teacher_disciplina = teacher_disciplina
	end
	def avaliarDisciplina(disciplina,teacher,nota)
		self.disciplina = disciplina
		self.teacher = teacher
		self.nota = nota
	end
end

class Teacher #Disciplina é uma lista e curso também é um lista
	attr_acessor :name, :disciplina, :curso, :college
	def initialize(name,disciplina,curso,college)
		self.name = name
		self.disciplina = disciplina
		self.curso = curso
		self.college = college
	end
end



