class UserGoal < ApplicationRecord
  belongs_to :goal
  belongs_to :user
  has_one :plan
end
