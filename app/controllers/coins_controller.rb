class CoinsController < ApplicationController
  def index
    @coins = Coin.all
  end

  def show
    @coin = Coin.find(params[:id])
  end

  def new
    @coin = Coin.new
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
