Rails.application.routes.draw do
  # root path
  root 'events#show_all_events'
  
  # event routing
  # add update routing
  get '/events/new', to: 'events#new_event', as: :new_event
  post '/events/create', to:'events#create_event', as: :create_event
  get '/events', to: 'events#show_all_events', as: :show_all_events
  get '/events/:id', to: 'events#show_event', as: :show_event
  get '/events/:id/edit', to: 'events#edit_event', as: :edit_event
  get '/events/update', to: 'events#update_event', as: :update_event
  delete '/events/:id', to: 'events#delete_event', as: :delete_event
  
  # location routing
  #add update
  get '/locations/new', to: 'locations#new_location', as: :new_location
  get '/locations', to: 'locations#show_all_locations', as: :show_all_locations
  get '/locations/:id', to: 'locations#show_location', as: :show_location
  get '/locations/:id/edit', to: 'locations#edit_location', as: :edit_location
  delete '/locations/:id', to: 'locations#delete_location', as: :delete_location
  
  # user routing
  #add update
  get '/users/new', to: 'users#new_user', as: :new_user
  post '/users/create', to: 'users#create_user', as: :create_user
  get '/users', to: 'users#show_all_users', as: :show_all_users
  get '/users/:id', to: 'users#show_users', as: :show_users
  get '/users/:id/edit', to: 'users#edit_user', as: :edit_user
  get '/users/update', to: 'users#update_user', as: :update_user
  delete '/users/:id', to: 'users#delete_user', as: :delete_user
end