class Plan < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :goal, optional: true
  has_many :user_goals
end
