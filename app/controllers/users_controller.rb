class UsersController < ApplicationController

  def new
    @new_user = User.new
  end

  # need to check uniquenss of email address on sign up
  # && User.find(session[:user_id]).exists?

  def create
    @user = User.new(user_params)
    if @user.save
      session[:email_address] = @user.email_address
      flash[:notice] = "Account Created!"
      redirect_to links_path
    else
      flash[:notice] = "Invalid user credentials. Please try again."
      redirect_to login_path
    end
  end

  def show
  end

  def dashboard
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password)
  end

  # def ensure_email_is_unique
  #   session[:email_address].uniq
  # end
end
