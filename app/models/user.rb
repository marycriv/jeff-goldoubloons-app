class User < ApplicationRecord
  has_many :pressings, through: :coins
  has_many :coins
  has_secure_password
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  def coin_names
    self.coins.select {|c| c.pressing }
  end
end
