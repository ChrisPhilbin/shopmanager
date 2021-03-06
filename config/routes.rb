Rails.application.routes.draw do
  devise_for :teches
  root 'static#index'
  # get '/auth/facebook/callback' => 'sessions#create'
    devise_for :customers, :controllers => { :omniauth_callbacks => "customers/omniauth_callbacks" }
  # devise_for :customers, controllers: { sessions: 'customers/sessions'}
  resources :teches do
    resources :repairs
    resources :customers
  end
  # resources :repairs
  resources :customers do
  	resources :cars do
  		resources :repairs
  	end
  end

  get '/repairs/open' => 'repairs#openrepairs'
  get '/repairs/closed' => 'repairs#closedrepairs'
  get '/repairs/unassigned' => 'repairs#unassignedrepairs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
