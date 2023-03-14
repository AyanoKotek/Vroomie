Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :cars, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :show, :index]
  end
  resources :bookings, only: [:index, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :bookings, only: :update
end
