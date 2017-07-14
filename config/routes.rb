Rails.application.routes.draw do
  resources :messages, only: [:new]
  resources :users, only: [:index]
  root to: 'users#index'
end
