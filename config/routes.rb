Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "test", to: "clinics#test"
  resources :clinics
  resources :doctors

end
