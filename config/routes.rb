Rails.application.routes.draw do
  root to: 'authors#index'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
