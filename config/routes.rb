Rails.application.routes.draw do
  root 'static#index'

  devise_for :customers
  resources :teches
  resources :repairs
  resources :customers
  resources :cars

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
