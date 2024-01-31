class Machine < ApplicationRecord
  has_many :assignements
  has_many :orders, through: :assignements
end
