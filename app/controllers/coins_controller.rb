class CoinsController < ApplicationController
  # before_action :authorized?, only: [:index, :show]

  def index
    @coins = Coin.all
  end

  def show
    @coin = Coin.find(params[:id])
  end

  def new
    @coin = Coin.new
  end

  # def click
  #   @user = User.find(params[:id])
  #   @pressings = Pressing.all
  #   lottery = []
  #
  #   @pressings.each do |p|
  #     p.rarity.times do
  #       lottery << p
  #     end
  #   end
  #   user_coin = lottery.sample
  #   Coin.create(user_id: user.id, pressing_id: user_coin.id)
  #   redirect_to users_path
  # end

  # def create
  #   @coin = Coin.create(coin_params)
  #   redirect_to users_path
  # end

  private

  def coin_params
    params.require(:coin).permit(:user_id, :pressing_id)
  end
end
