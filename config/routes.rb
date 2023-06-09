Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :cars, only: [:show, :new, :create, :destroy, :update, :edit, :index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy, :show, :index, :update, :edit] do
    member do
    get :confirmation
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :bookings, only: :update
end
