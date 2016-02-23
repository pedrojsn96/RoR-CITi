class UsersController < ApplicationController
	before_action :authorize, except: [:new, :create]
    before_action :correct_user?, only: [:edit, :update, :destroy]
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
  			redirect_to @user
  		else 
  			render action: :new
  		end 
	end
	
	def show #Aqui é onde fica meu HOME
		@user = User.find(params[:id])
	end

	def edit
  		@user = User.find(params[:id])
  	end

	def update
	  	@user = User.find(params[:id])
	  	if @user.update_attributes(user_params)
	  		redirect_to users_path
	  	else
	  		render action: :edit
	  	end
  end

	def destroy
	  	@user = User.find(params[:id])
	  	@user.destroy
	  	sign_out
	  	redirect_to root_path
  	end
	private
	def user_params
		params.require(:user).permit(:email,:name,:idade,:faculdade,:curso,:password,:password_confirmation)
	end
end
