Rails.application.routes.draw do
  resources :plans
  resources :goals
  resources :users
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root to: "home#index"
 
 
 put 'goal/:id', to: 'goals#unfollow_goal', as: 'unfollow_goal'

 get 'goal/:id', to: 'goals#follow_goal', as: 'follow_goal'

end
