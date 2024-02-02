class Order < ApplicationRecord
  belongs_to :client, foreign_key: :client_id, class_name: "User"
  has_many :assignements
  has_many :machines, through: :assignements
  has_one_attached :photo
end
