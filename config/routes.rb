Rails.application.routes.draw do
  resources :acceptances, only: [:new, :create]
  root to: 'top#index'
  get 'top/index'
  resources :rooms
  resources :books
  get 'greetings/index'
end
