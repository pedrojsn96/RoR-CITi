class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
  		if @user.save
  		    flash[:notice] =  "Usuário foi criado com sucesso" 
  			redirect_to '/welcome/index'
  		else 
  			render action: :new
  		end 
	end
	
	def show #Aqui é onde fica meu HOME
		@user = User.find(params[:id])
	end

	def destroy
	end
	private
	def user_params
		params.require(:user).permit(:email,:name,:idade,:faculdade,:curso,:password)
	end
end
