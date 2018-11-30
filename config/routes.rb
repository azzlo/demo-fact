Rails.application.routes.draw do
  root 'bills#index'
  get 'clients', to: 'users#clients'
  get 'clients/new', to: 'users#new_client'

  resources :bills
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
