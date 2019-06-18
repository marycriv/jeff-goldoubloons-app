class UsersController < ApplicationController
  before_action :authorized?, only: [:index, :show]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(user_params)
    redirect_to user_path
  end

  def click
    @user = User.find(params[:id])
    @user.coin_create
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :display_name)
  end

end
