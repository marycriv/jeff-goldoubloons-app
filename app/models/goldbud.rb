class Goldbud < ApplicationRecord
  belongs_to :goldbuder, class_name: 'User'
  belongs_to :goldbudee, class_name: 'User'
end
