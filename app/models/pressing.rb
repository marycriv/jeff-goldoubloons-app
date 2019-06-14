class Pressing < ApplicationRecord
  has_many :users, through: :coins
  has_many :coins
end
