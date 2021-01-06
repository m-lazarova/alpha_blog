class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	before_action :set_user, only: [:show, :edit, :update]
	
	def index
		@users = User.paginate(page: params[:page], per_page: 2)
	end 
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, your registration is complete"
			redirect_to articles_path
		else
			render :new
		end 
	end
	
	def edit
	end 
	
	def update
		if @user.update(user_params)
			flash[:notice] = "Your profile was updated"
			redirect_to @user
		else 
			render 'edit'
		end 
	end
	
	def show

		@articles = @user.articles.paginate(page: params[:page], per_page: 5)
	end 
	
	private
	
	# def set_user
	# 	@user = User.find(params[:id])
	# end 
	
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
	
	def set_user
		@user = User.find(params[:id])
	end 
	
end 