# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
  {email: "admin@test.com", password: "password", password_confirmation: "password",
  reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1,
  current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true},
  
  {email: "planner@test.com", password: "password", password_confirmation: "password",
  reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1,
  current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false},
  
  {email: "user@test.com", password: "password", password_confirmation: "password",
  reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:44",
  last_sign_in_at: "2015-02-06 14:03:44", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false}
])

Goal.create!([{name:"Learn to swim"}, {name:"Learn to speak conversational French"}, {name:"Learn to build a simple rails app"}, {name:"Get a six pack"}])

Plan.create!([{name:"Swimming with Sharks", description:"This is the description for the goal", goal_id: 1, user_id: 1},
      {name:"Parlay with Pirates", description:"This is the description for the goal", goal_id: 2, user_id: 1},
      {name:"Abracodeabra", description:"This is the description for the goal", goal_id: 3, user_id: 1},
      {name:"Paddle in a pool", description:"This is the description for the goal", goal_id: 1, user_id: 1},
      {name:"Bask in the bath", description:"This is the description for the goal", goal_id: 1, user_id: 1},
      {name:"Stretch in the sink", description:"This is the description for the goal", goal_id: 1, user_id: 1},
      {name:"Salsa in the sea", description:"This is the description for the goal", goal_id: 1, user_id: 1},
      {name:"Kidnap a frenchman", description:"This is the description for the goal", goal_id: 2, user_id: 1}
      ])

UserGoal.create!([{id: 1, user_id: 1, goal_id: 1, plan_id: 1},
                  {id: 2, user_id: 1, goal_id: 2, plan_id: 2},
                  {id: 3, user_id: 2, goal_id: 2, plan_id: 7},
                  {id: 4, user_id: 3, goal_id: 1, plan_id: 4},
                  {id: 5, user_id: 1, goal_id: 3, plan_id: 3},
                  {id: 6, user_id: 3, goal_id: 2, plan_id: 2},
                  {id: 7, user_id: 2, goal_id: 1, plan_id: 5},
                  {id: 8, user_id: 2, goal_id: 3, plan_id: 3}])