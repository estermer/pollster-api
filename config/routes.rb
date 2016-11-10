Rails.application.routes.draw do
  resources :polls, only: [:index, :create, :destroy]
  put 'polls/:poll_id/answers/:id', to: 'answers#create'
  put '/answers/:id', to: 'answers#update'
end

#
# Prefix Verb   URI Pattern                           Controller#Action
#  polls GET    /polls(.:format)                      polls#index
#        POST   /polls(.:format)                      polls#create
#   poll DELETE /polls/:id(.:format)                  polls#destroy
#        PUT    /polls/:poll_id/answers/:id(.:format) answers#create
#        PUT    /answers/:id(.:format)                answers#update
