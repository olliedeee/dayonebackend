class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
