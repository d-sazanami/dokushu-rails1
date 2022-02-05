Rails.application.routes.draw do
  resources :users
  resources :orders
  resources :acceptances, only: [:new, :create]
  root to: 'top#index'
  get 'top/index'
  resources :rooms do
    resources :entries, only: [:new, :create, :destroy, :index],
        path: :rentals, shallow: true do
      post :confirm, on: :collection
      post :confirm_back, on: :collection
    end
  end
  resources :books
  get 'greetings/index'
end
