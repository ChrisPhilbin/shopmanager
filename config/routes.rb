Rails.application.routes.draw do
  root 'static#index'

  devise_for :customers, controllers: { sessions: 'customers/sessions'}
  resources :teches do
    # resources :repairs
    resources :customers
  end
  # resources :repairs
  resources :customers do
  	resources :cars do
  		resources :repairs
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
