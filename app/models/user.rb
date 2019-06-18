class User < ApplicationRecord
  has_many :pressings, through: :coins
  has_many :coins
  has_secure_password
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }


  def coin_names
    self.coins.select {|c| c.pressing }
  end

  def coin_create
    self.update(wallet: self.wallet - 10)
    @pressings = Pressing.all
    lottery = []
    @pressings.each do |p|
      p.rarity.to_i.times do
        lottery << p.id
      end
    end
    Coin.create(user_id: self.id, pressing_id: lottery.shuffle.sample.to_i)
  end

end #end class
