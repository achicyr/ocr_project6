Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home, :users, :activities
  post "/add_activity_to_account", to: "activities#add_activity", as: :add_activity
  get "/add_activity_to_account", to: "activities#index", as: :add_activity_
  get "/unsubscribe", to: "activities#unsubscribe", as: :unsubscribe
  get '/users/:id' => 'users/sessions#show', as: :okok
end
