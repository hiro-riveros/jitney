Rails.application.routes.draw do
  #get 'landing#index'
  #get 'landing#contact'
  #get 'landing#about'

  root 'welcome#index'

  resources :products
  resources :plan
  resources :account_type
  resources :user_history
  resources :user_problems
  resources :document

  resources :users, :only => [:index, :update, :edit]

  match '/profile/:id' => 'users#get_profile', via: [:get], :as => :profile
  #match '/users/:id/update' => 'users#update_profile', via: [:put, :patch], :as => :update_profile
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup


  namespace :api, path: '/api', defaults: { format: :json} do
    resources :users, only:  [:create, :show, :delete]
    resources :passengers, only:  [:create, :show, :delete]
    resources :jitneys, only:  [:create, :show, :delete]
    resources :positions, only: [:create, :update, :show]
    resources :cars, only: [:create, :update, :show]
  end
  match '*any' => 'application#options', :via => [:options, :post, :delete, :update, :put, :patch]

end
