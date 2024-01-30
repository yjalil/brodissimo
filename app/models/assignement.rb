class Assignement < ApplicationRecord
  belongs_to :worker, foreign_key: :worker_id, class_name: "User"
  belongs_to :order
end
