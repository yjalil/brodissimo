class Order < ApplicationRecord
  belongs_to :client, foreign_key: :client_id, class_name: "User"
  belongs_to :machine
end
