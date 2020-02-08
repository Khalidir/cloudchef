Rails.application.routes.draw do
  devise_for :users
  root to: 'meals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
end
