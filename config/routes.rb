Rails.application.routes.draw do

  resource :top, :only => [:show]
  resources :deliveries do
    get :search, on: :collection
    get :search_travel, on: :collection
    get :search_school, on: :collection
    get :search_partner, on: :collection
    get :search_transport, on: :collection
    get :search_hotel, on: :collection
    get :search_arrivalhotel, on: :collection
    resources :delivery_details, :except => [:index]
    get '/delivery_details/new/:type' => 'delivery_details#new'
    get '/delivery_details/:id/edit_del' => 'delivery_details#edit_del' , as: 'edit_del'
    get '/delivery_details/:id/show_del' => 'delivery_details#show_del' , as: 'show_del'
    get '/delivery_details' => 'deliveries#show'
  end
  root to: "deliveries#search"
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  
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
