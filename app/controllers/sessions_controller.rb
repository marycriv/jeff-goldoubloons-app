class SessionsController < ApplicationController

  def new
  end

  def create
    #authenticate the user
    user = User.find_by(username: params[:login_creds][:username])
    if user && user.authenticate(params[:login_creds][:password])
      log_in(user)
      redirect_to home_path
    else
      flash.now[:danger] = 'Invalid username/password combination'
      redirect_to home_path
    end
  end


  def destroy
    log_out
    redirect_to home_path
  end

end
