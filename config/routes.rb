Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home, :users, :activities
  post "/add_activity_to_user", to: "activities#add_activity", as: :add_activity_to_user
  post "/add_activity_to_userr", to: "activities#add_activityy", as: :add_activity_to_userr
  post "/add_activity_to_userrr", to: "activities#add_activityyy", as: :add_activity_to_userrr
  post "/add_log_to_user_activity", to: "activities#add_log", as: :add_log_to_user_activity
  get "/users_activities", to: "activities#indexUser", as: :user_activity_index
  get "/unsubscribe", to: "activities#unsubscribe", as: :unsubscribe
  get '/users/:id' => 'users/sessions#show', as: :okok
end
