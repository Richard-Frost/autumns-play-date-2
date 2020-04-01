class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def show
		@user = User.find_by(id: session[:user_id])
	end

	def home
	 @family = my_family
	end

	def edit
	  @user = User.find_by(id: session[:user_id])
	end

	def update
    @user = User.find_by(id: session[:user_id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email)
  end

end
