Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/search', to: 'search#index'
  get "test", to: "clinics#test"
  resources :clinics, only: [:show]
  resources :doctors, only: [:show] do
  resources :appointments, only: [:create]
  resources :reviews, only: [:create]
  end

  resources :appointments, only: [:index, :update, :destroy, :create]
  resources :profiles
  resources :questions, only: [:index, :create]
end
