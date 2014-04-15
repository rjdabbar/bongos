Bongos::Application.routes.draw do
 
  root "home#index"
  get "home/index"
  post 'auth/:provider/callback' => 'home#create'
  resources :profile, only: [:show, :create]
end
