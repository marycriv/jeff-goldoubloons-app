class UsersController < ApplicationController
  before_action :authorized?, only: [:index, :show, :wallet]
  before_action :logged_out?, only: [:new]
  before_action :restricted_access, only: [:edit, :wallet, :password]

  def index
    @users = User.all
  end

  def show
    @pressings = Pressing.all.sort_by {|pressing| pressing.rarity}.reverse
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.update(wallet: 0, admin: false)
    session[:user_id] = @user.id
    redirect_to wallet_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(user_params)
    redirect_to user_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home_path
  end

  def password
    @user = User.find(params[:id])
  end

  def click
    @user = User.find(params[:id])
    if @user.wallet >= 10
      @coin = @user.coin_create
      redirect_to @coin
    else
      flash[:message] = "Need at least $10 to buy coin."
      redirect_to @user
    end
  end

  def wallet
    @user = User.find(params[:id])
  end

  def error
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :display_name, :wallet, :icon)
  end

  def restricted_access
    @user = User.find(params[:id])
    redirect_to error_path unless current_user == @user || current_user.admin == true
  end

  def logged_out?
    redirect_to error_path unless current_user.nil?
  end
end
