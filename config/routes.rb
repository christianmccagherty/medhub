Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  root to: "pages#home"
  get '/search', to: 'search#index'
  get "test", to: "clinics#test"
  resources :clinics
  resources :doctors do
    resources :reviews, only: [:create]
  end
  resources :appointments
  resources :profiles
end
