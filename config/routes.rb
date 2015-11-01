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


  namespace :api, path: '/api', defaults: {format: :json} do
    resources :users#, only: [:show]
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
