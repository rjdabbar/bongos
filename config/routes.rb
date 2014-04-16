Bongos::Application.routes.draw do
 
  get "users/show"
  root "home#index"
  get "home/index"
  post 'auth/:provider/callback' => 'home#create'
  resources :profile, only: [:show, :create]
  get 'players', to: 'users#show', as: :players
end
