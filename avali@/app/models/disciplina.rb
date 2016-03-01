class Disciplina < ActiveRecord::Base
	belongs_to :curso
	validates :name, length: {maximum: 100}
	validates :name_prof, presence: true
	validates :nota, presence: true
	validates :comment, presence: true

	before_save { self.name = name.downcase }
end
