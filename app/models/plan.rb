class Plan < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :goal
  has_many :user_goals
end
