Rails.application.routes.draw do
  resources :polls, only: [:index, :create, :destroy]
  post 'polls/:poll_id/answers', to: 'answers#create'
  put '/answers/:id', to: 'answers#update'
end

#
# Prefix Verb   URI Pattern                           Controller#Action
#  polls GET    /polls(.:format)                      polls#index
#        POST   /polls(.:format)                      polls#create
#   poll DELETE /polls/:id(.:format)                  polls#destroy
#        POST    /polls/:poll_id/answers/:id(.:format) answers#create
#        PUT    /answers/:id(.:format)                answers#update
