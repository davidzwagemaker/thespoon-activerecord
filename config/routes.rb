# TODO:
# add Seed
# add styling
# add alert / confirmation for destroy



Rails.application.routes.draw do

  resources :restaurants

  # get 'restaurants/index'
  # # CRUD
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant #C 1. Get form with info
  # post 'restaurants', to: 'restaurants#create' #C 2. Post info to DB

  # get 'restaurants', to: 'restaurants#index' #R
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant #R
  # # restaurants/id should be below restaurants/new, otherwise rails will think "new" is an id --> more specific routes on top

  # # Member action - action edit on the member id of the class Restaurant
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant #U
  # patch 'restaurants/:id', to: 'restaurants#update', as: :update_restaurant #U

  # delete 'restaurants/:id', to: 'restaurants#destroy', as: :destroy_restaurant #D
  # # VERB PATH, to: 'CONTROLLER:ACTION'
end
