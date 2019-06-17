class CoinsController < ApplicationController
  before_action :authorized?, only: [:index, :show]

  def index
    @coins = Coin.all
  end

  def show
    @coin = Coin.find(params[:id])
  end

  def new
    @coin = Coin.new
  end

  def click
    @user = User.find(params[:id])
    num = rand(1..100)

    case num
      when <= 30
        Coin.create(user_id: @user.id, pressing_id: p1.id)
        redirect_to users_path
      when <= 50
        Coin.create(user_id: @user.id, pressing_id: p2.id)
        redirect_to users_path
      when <= 60
        Coin.create(user_id: @user.id, pressing_id: p3.id)
        redirect_to users_path
      when <= 70
        Coin.create(user_id: @user.id, pressing_id: p4.id)
        redirect_to users_path
      when <= 75
        Coin.create(user_id: @user.id, pressing_id: p5.id)
        redirect_to users_path
      when <= 80
        Coin.create(user_id: @user.id, pressing_id: p6.id)
        redirect_to users_path
      when <= 85
        Coin.create(user_id: @user.id, pressing_id: p7.id)
        redirect_to users_path
      when <= 90
        Coin.create(user_id: @user.id, pressing_id: p8.id)
        redirect_to users_path
      when <= 95
        Coin.create(user_id: @user.id, pressing_id: p9.id)
        redirect_to users_path
      when <= 100
        Coin.create(user_id: @user.id, pressing_id: p10.id)
        redirect_to users_path
    end
  end

  def create
    @coin = Coin.create(coin_params)
    redirect_to coins_path
  end

  private

  def coin_params
    params.require(:coin).permit(:user_id, :pressing_id)
  end
end
