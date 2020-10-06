Rails.application.routes.draw do
  resources :flights
  resources :bookings, only: [:new, :create, :show]
  
  root 'flights#index'
end
