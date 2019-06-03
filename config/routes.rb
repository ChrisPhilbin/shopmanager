Rails.application.routes.draw do
  resources :teches
  resources :repairs
  resources :customers
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
