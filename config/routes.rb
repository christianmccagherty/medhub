Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :clinics, only: [:show, :index]
  resources :doctors, only: :index
end
