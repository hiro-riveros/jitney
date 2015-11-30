Rails.application.routes.draw do
  #get 'landing#index'
  #get 'landing#contact'
  #get 'landing#about'

  #devise_for :users#, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  devise_for :users#, :controllers => {sessions: 'sessions', registrations: 'registrations'} 

  root 'welcome#index'

  resources :products
  resources :plan
  resources :account_types
  resources :user_histories
  resources :user_problems
  resources :documents
  resources :transactions

  resources :users, :only => [:index, :update, :edit]

  match '/profile/:id' => 'users#get_profile', via: [:get], :as => :profile
  
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup


  # namespace :api, path: '/api', defaults: { format: :json} do

  #   #devise_for :users, :controllers => {:sessions => 'api/sessions'}

  #   resources :users, only:  [:index, :create, :show, :delete]
  #   resources :passengers, only:  [:index, :create, :show, :delete]
  #   resources :jitneys, only:  [:index, :create, :show, :delete]
  #   resources :positions, only: [:index, :create, :update, :show]
  #   resources :cars, only: [:index, :create, :update, :show]
  # end

# link de la respuesta del como hice para authenticar
# http://www.scriptscoop.net/t/7da4d092bbbe/web-api-authentication-with-devise-and-simple-token-authentication.html

  namespace :api, path: '/api', defaults: { format: :json } do
    devise_scope :user do
      post 'login' => 'sessions#create', :as => :login
      delete 'logout' => 'sessions#destroy', :as => :logout
    end

    resources :users, only:  [:index, :create, :show, :delete, :update]
    resources :passengers, only:  [:index, :create, :update, :show, :edit]
    resources :jitneys, only:  [:index, :create, :update, :show, :edit]
    resources :positions, only: [:index, :create, :update, :show]
    resources :cars, only: [:index, :create, :update, :show, :edit]
  end


  match '*any' => 'application#options', :via => [:options, :post, :delete, :update, :put, :patch]

end
