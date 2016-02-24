class DisciplinasController < ApplicationController
  before_action :authorize, except: [:new, :create]
  def index
  	@disciplinas = Disciplina.all
  end
  def new
  	@disciplina = Disciplina.new
  end
  def show
  	@disciplina = Disciplina.find(params[:id])
  end
  def create
		user = current_user
		@disciplina = Disciplina.new(user_params)
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
