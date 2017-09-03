class Plan < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :goal
  has_many :user_goals
  

  def user_goals_inside(id)
    self.user_goals.collect(&:user_id).each do |val|
      if val == (id)
        return "You are following this goal"
      else
        return  #Add something here later
      end
    end
  end
end
