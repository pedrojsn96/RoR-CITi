class CursosController < ApplicationController
  before_action :authorize, except: [:new, :create]
  def index
  	@cursos = Curso.all
  end
  def new
  	@curso = Curso.new
  end
  def create
		user = current_user
		@curso = Curso.new(user_params)
  		if @curso.save
  		    flash[:notice] =  "Curso cadastrado com sucesso" 
  			redirect_to user_path(user)
  		else 
  			render action: :new
  		end 
	end
	private
	def user_params
		params.require(:curso).permit(:name,:faculdade)
	end
end
