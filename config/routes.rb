Rails.application.routes.draw do
  resources :reviews
  resources :practitioners
  resources :users

  post '/login', to: 'auth#login'
  post '/signup', to: 'auth#signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
