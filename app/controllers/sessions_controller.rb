class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email_address(params[:session][:email_address])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:error] = "Invalid login credentials"
      render :new
    end
  end

  def delete
    reset_session
    redirect_to root_path
  end
end
