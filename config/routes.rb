Rails.application.routes.draw do
  
  get 'property/index'
  get 'property/show'
  get 'property/buy'
  
  resources :properties
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  get 'users/new'
  get 'pages/index'
  root 'pages#index'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
