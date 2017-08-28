class CreateUserGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :user_goals do |t|
      t.integer :user_id
      t.integer :goal_id
    end
  end
end
