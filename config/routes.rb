Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :joggings
  get 'home/about'
  root 'joggings#index'
end
