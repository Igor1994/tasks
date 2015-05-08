Rails.application.routes.draw do

  post 'groups/post_create'

  post 'persons/crop_image'

  match 'auth/facebook/callback', via: [:get, :post], to: 'sessions#create'
  match 'auth/failure', via: [:get], to: redirect('/')
  match 'signout', via: [:delete, :get], to: 'sessions#destroy', as: 'signout'

  post 'friends/accept_friendship'

  get 'friends/index'

  post 'searches/export_value'

  get 'persons/change_dossier'

  put 'persons/update_dossier'

  post 'user_messages/create_comment'

  get 'user_messages/show_comments'

  get 'user_messages/close_comments'

  post 'groups/search'

  get 'groups/search_groups'

  get 'groups/index'

  post 'groups/create'

  get 'groups/create_new'

  get 'group/:id', to: 'groups#show'

  post 'group_memberships/create'

  delete 'group_memberships/destroy'

  get 'searches/index'

  post 'searches/show'

  post 'persons/change_page'

  post 'home/menu'

  get 'user_search/index'

  post 'user_search/create'

  get "hashtags/:hashtag",   to: "hashtags#show",      as: :hashtag
  get "hashtags",            to: "hashtags#index",     as: :hashtags
  
  delete 'likes/destroy'

  post 'likes/create' 

  get 'images/index'

  get 'home/cosmo_home'

  get 'persons/profile', as: 'user_root' 

  get 'home/index'

  post 'persons/create'

  get 'persons/create_message'

  post 'user_messages/create'

  match 'users/index/:id', via: [:get, :patch], to: 'users#index', as: 'user'  

  post 'users/change_page'

  post 'friendships/create'

  delete 'friendships/destroy'

  put 'persons/update'

  get 'persons/avatar_update'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  resources :user do
    resources :user_messages
  end

  root to: "home#index"

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
