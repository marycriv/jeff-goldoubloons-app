class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :logged_in?

  def current_user
      if session[:user_id]
        @user = User.find(session[:user_id])
      end
  end

  def logged_in?
    !!current_user
  end

  def authorized?
    redirect_to signup unless logged_in?
  end
end
