Rails.application.routes.draw do
  resources :patients
  resources :appointments
  resources :doctors
  resources :insurance_cards, only: [:index]
  resources :hospitals, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
