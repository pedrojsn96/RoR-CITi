class DisciplinasController < ApplicationController
  before_action :authorize, except: [:new, :create]
  def index
    @curso = Curso.find(params[:curso_id])
  	@disciplinas = @curso.disciplinas
  end
  def new
  	@disciplina = Disciplina.new
  end
  def show
  	@disciplina = Disciplina.find(params[:id])
  end
  def create
		user = current_user
    @curso = Curso.find(params[:curso_id])
		@disciplina = @curso.disciplinas.create(user_params)
  		if @disciplina.save
  		    flash[:notice] =  "Disciplina cadastrada com sucesso" 
  			redirect_to user_path(user)
  		else 
  			render action: :new
  		end 
	end
	private
	def user_params
		params.require(:disciplina).permit(:name,:name_prof,:nota,:comment)
	end
end
