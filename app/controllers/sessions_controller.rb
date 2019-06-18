class SessionsController < ApplicationController

  def new
  end

  def create
    #authenticate the user
    @user = User.find_by(params[:username])
    if @user && @user.authenticate(params[:password])
      log_in @user
      redirect_to @user
    else
      flash.now[:danger] = 'Invalid username/password combination'
      redirect_to "/home"
    end
  end


  def destroy
    session[:user_id] = nil
  end

end
