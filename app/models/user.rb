class User < ApplicationRecord
  has_many :pressings, through: :coins
  has_many :coins
end
