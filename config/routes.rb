DeviseOmniauth::Application.routes.draw do
  
  get "users/show"
  # get '/auth/twitter/callback', to: 'authentications#create'
  # get '/auth/:provider/callback' => 'authentications#create'

  # get "app_content/home"

  resources :authentications

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
    controllers: {omniauth_callbacks: 'authentications', registrations: 'registrations'},
    skip: [:registrations]
    as :user do
      # signup
      get 'register', to: 'registrations#new', as: 'new_user_registration'
      post 'register', to: 'registrations#create', as: 'user_registration'
      # account deletion
      delete 'register', to: 'registrations#destroy'
      # settings & cancellation
      get '/cancel', to: 'registrations#cancel', as: 'cancel_user_registration'
      get '/me/settings', to: 'registrations#edit',   as: 'edit_user_registration'
      put '/settings', to: 'registrations#update'
    end

  resources :users, :only => :show
  get "/:profile_url", to: 'users#show', as: 'profile'

  root :to => 'app_content#home'

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
