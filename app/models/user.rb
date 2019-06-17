class User < ApplicationRecord
  has_many :pressings, through: :coins
  has_many :coins
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  def coin_name
    self.coins.select {|c| c.coins }
  end
end
