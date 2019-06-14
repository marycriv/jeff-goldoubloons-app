class User < ApplicationRecord
  has_many :pressings, through: :coins
  has_many :coins
  validates :username, uniqueness: true

  def coin_name
    self.coins.select{|c| c.pressing }
  end
end
