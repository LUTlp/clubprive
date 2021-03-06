Rails.application.routes.draw do
  root 'static_pages#home'
  get 'sessions/new'
  get '/club', to: 'static_pages#pageclub'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as: 'logout'
  post '/signup',  to: 'users#create', as: 'creationutilisateur'
   resources :users

#   Prefix Verb   URI Pattern                                                                              Controller#Action
#                        root GET    /                                                                                        static_pages#home
#                      signup GET    /signup(.:format)                                                                        users#new
#
#                       users GET    /users(.:format)                                                                         users#index
#                             POST   /users(.:format)                                                                         users#create
#                    new_user GET    /users/new(.:format)                                                                     users#new
#                   edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                        user GET    /users/:id(.:format)                                                                     users#show
#                             PATCH  /users/:id(.:format)                                                                     users#update
#                             PUT    /users/:id(.:format)                                                                     users#update
#                             DELETE /users/:id(.:format)                                                                     users#destroy
#          rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#   rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#          rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#   update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#        rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
