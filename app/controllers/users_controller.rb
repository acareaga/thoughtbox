class UsersController < ApplicationController

  def new
    @new_user = User.new
  end

  def create
    @user = User.new(user_creation_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notive] = "Account Created!"
      redirect_router(@user)
    else
      flash[:error] = "Invalid user credentials. Please try again."
      redirect_to login_path
    end
  end

  def show
  end

  private

  def user_creation_params
    params.permit(:email_address, :password)
  end

  def user_params
    params.require(:user).permit(:email_address, :password)
  end
end
