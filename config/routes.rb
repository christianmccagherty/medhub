Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  root to: "pages#home"
  get '/search', to: 'search#index'
  resources :clinics
  resources :doctors
  resources :appointments
  resources :profiles
end
