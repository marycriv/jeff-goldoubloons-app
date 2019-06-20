class User < ApplicationRecord
  has_many :pressings, through: :coins
  has_many :coins
  has_many :goldbudded_users, foreign_key: :goldbuder_id, class_name: 'Goldbud'
  has_many :goldbudees, through: :goldbudded_users
  has_many :goldbudding_users, foreign_key: :goldbudee_id, class_name: 'Goldbud'
  has_many :goldbuders, through: :goldbudding_users
  has_secure_password
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }


  def user_pressing_ids
    bepis = []
    self.coins.each {|c| bepis << c.pressing_id }
    bepis
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
