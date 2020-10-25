Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'toppages/index'

   root to: 'toppages#index'
  resources:tasks
  
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
end
