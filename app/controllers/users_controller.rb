class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.valid?
			session[:user_id] = @user.id
			redirect_to root_url, notice: "You have entered into my world"
		else
			render :new
		end
	end


	private
	def user_params
		params.require(:user).permit(:email, :name, :password, :password_confirmation)
	end

end
