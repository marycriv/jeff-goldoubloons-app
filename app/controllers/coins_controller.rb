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

  # def self.click
  #   @user = User.find(params[:id])
  #   @pressings = Pressing.all
  #   lottery = []
  #
  #   @pressings.each do |p|
  #     p.rarity.to_i.times do
  #       lottery << p.id
  #     end
  #   end
  #
  #   Coin.create(user_id: @user.id, pressing_id: lottery.sample.to_i)
  # end

  def create
    @coin = Coin.create(coin_params)
    redirect_to users_path
  end

  private

  def coin_params
    params.require(:coin).permit(:user_id, :pressing_id)
  end
end
