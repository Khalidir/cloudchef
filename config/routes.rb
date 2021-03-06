Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :meals do
    resources :bookings, only: [ :new, :create, :show ]
  end
  resources :bookings, only: [ :index ] do
    resources :reviews, only: [ :new, :create ]
    collection do
      get 'events'
    end
  end


end
