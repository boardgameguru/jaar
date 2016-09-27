Rails.application.routes.draw do

  resources :jars
  resources :items

  root 'users#show'
  resource :users
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :password_resets, only: [:create, :edit, :update]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
