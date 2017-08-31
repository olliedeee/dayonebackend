class AddPlanIdToUserGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :user_goals, :plan_id, :integer
  end
end
