Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  #Routes
  #req-mthd   url                 controller/action
  #GET        '/events/new',      'events#new_event'
  #GET        '/events/',         'events#show_all_events'
  #GET        '/events/:id',      'events#show_event'
  #GET        '/events/:id/edit'  'events#edit_event'
  #DELETE     '/events/:id',      'events#delete_event'
  
  #Event Routes
  get        '/events/new',       to:'events#new_event', as: :new_event
  get        '/events/',          to:'events#show_all_events', as: :show_all_events
  get        '/events/:id',       to:'events#show_event', as: :show_event
  get        '/events/:id/edit',  to:'events#edit_event', as: :edit_event  
  delete     '/events/:id',       to:'events#delete_event', as: :delete_event
  
  
  #Location Routes
  get        '/locations/new',       to:'locations#new_location', as: :new_location
  get        '/locations/',          to:'locations#show_all_locations', as: :show_all_locations
  get        '/locations/:id',       to:'locations#show_location', as: :show_location
  get        '/locations/:id/edit',  to:'locations#edit_location', as: :edit_location 
  delete     '/locations/:id',       to:'locations#delete_location', as: :delete_location
  
  #User Routes
  get        '/users/new',       to:'users#new_user', as: :new_user
  get        '/users/',          to:'users#show_all_users', as: :show_all_users
  get        '/users/:id',       to:'users#show_user', as: :show_user
  get        '/users/:id/edit/', to:'users#edit_user', as: :edit_user 
  delete     '/users/:id',       to:'users#delete_user', as: :delete_user


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
