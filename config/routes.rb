Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  resources :clinics
  resources :doctors

end
