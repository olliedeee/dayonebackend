class Goal < ApplicationRecord
  validates_uniqueness_of :name
  validates :name, presence:true, length: {minimum:3, maximum: 40}
 
  has_many :plans
  has_many :user_goals
  has_many :users, through: :user_goals

 
end
