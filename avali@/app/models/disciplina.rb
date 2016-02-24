class Disciplina < ActiveRecord::Base
	validates :name, length: {maximum: 100}, uniqueness: {case_sensitive: false, message: "A Disciplina já possui cadastro!"}
	validates :name_prof, presence: true
	validates :nota, presence: true
	validates :comment, presence: true

	before_save { self.name = name.downcase }
end
