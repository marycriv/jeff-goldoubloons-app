class UsersController < ApplicationController
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
    @pressings = Pressing.all
    lottery = []
    @pressings.each do |p|
      p.rarity.to_i.times do
        lottery << p.id
      end
    end
    Coin.create(user_id: @user.id, pressing_id: lottery.sample.to_i)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :display_name)
  end

end
