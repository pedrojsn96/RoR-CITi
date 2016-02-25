class Curso < ActiveRecord::Base
	has_many :disciplinas
	validates :name, length: {maximum: 100}, uniqueness: {case_sensitive: false, message: "O Curso já possui cadastro!"}
	validates :faculdade, presence: true

	before_save { self.name = name.downcase }
end 
