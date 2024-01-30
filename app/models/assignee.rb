class Assignee < ApplicationRecord
  belongs_to :user, foreign_key: :worker_id, class_name: "User"
  belongs_to :order
end
