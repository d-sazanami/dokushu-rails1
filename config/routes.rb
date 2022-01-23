Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :acceptances, only: [:new, :create]
  root to: 'top#index'
  get 'top/index'
  resources :rooms
  resources :books
  get 'greetings/index'
  resources :entries, path: :rentals, only: [:new, :create, :destroy, :index, :show] do
    post :confirm, on: :collection
  end
end
