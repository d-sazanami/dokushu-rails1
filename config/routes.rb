Rails.application.routes.draw do
  resources :acceptances, only: [:new, :create]
  get 'top/index'
  resources :rooms
  resources :books
  get 'greetings/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
