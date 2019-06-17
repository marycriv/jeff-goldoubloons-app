class Coin < ApplicationRecord
  belongs_to :user
  belongs_to :pressing

  # def click
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
end
