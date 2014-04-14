Bongos::Application.routes.draw do
 
  root "home#index"
  get "home/index"
  post 'auth/steam/callback' => 'home#create'
  resources :profile, only: [:show, :create]
end
