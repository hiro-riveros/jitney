Rails.application.routes.draw do
  #get 'landing#index'
  #get 'landing#contact'
  #get 'landing#about'

  devise_for :users#, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

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
  
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup


  namespace :api, path: '/api', defaults: { format: :json} do

    devise_for :users, :controllers => {:sessions => 'api/sessions'}

    resources :users, only:  [:index, :create, :show, :delete]
    resources :passengers, only:  [:index, :create, :show, :delete]
    resources :jitneys, only:  [:index, :create, :show, :delete]
    resources :positions, only: [:index, :create, :update, :show]
    resources :cars, only: [:index, :create, :update, :show]
  end
  match '*any' => 'application#options', :via => [:options, :post, :delete, :update, :put, :patch]

end
