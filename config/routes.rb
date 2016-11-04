Rails.application.routes.draw do
  resources :users
  resources :users do
    resources :ratings
  end
  resources :courses
  resources :replies
  resources :requests


  post '/users/login', to: 'users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
