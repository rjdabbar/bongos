Bongos::Application.routes.draw do
  root "home#index"
  get "home/index"
  post 'auth/steam/callback' => 'home#auth_callback'
end
