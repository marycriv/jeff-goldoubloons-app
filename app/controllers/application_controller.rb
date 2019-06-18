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
end
