Rails.application.routes.draw do
  resources :bookings
  resources :rooms
  resources :hotels
  resources :dashboards, only: :index
  resources :available_rooms, only: :index
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'dashboards#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
