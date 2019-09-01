class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :logged_in?

  def logged_in?
    !current_user.nil?
  end

  def authorized?
    redirect_to signup_path unless logged_in?
  end

  def admin?
    redirect_to error_path unless current_user.admin == true
  end

  def home_screen?
    redirect_to current_user unless !current_user
  end
end
