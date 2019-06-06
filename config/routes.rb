Rails.application.routes.draw do
  root 'static#index'

  devise_for :customers, controllers: { sessions: 'customers/sessions'}
  resources :teches
  resources :repairs
  resources :customers do
  	resources :cars
  	# resources :repairs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
