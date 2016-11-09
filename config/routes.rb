Rails.application.routes.draw do
  resources :polls, only: [:index, :create, :destroy]
  resource :polls, only: [:show] do
    resource :answers, only: [:create]
  end
  put '/answers/:id', to: 'answers#update'
end


# Prefix Verb   URI Pattern              Controller#Action
#         root GET    /                        welcome#index
#        polls GET    /polls(.:format)         polls#index
#              POST   /polls(.:format)         polls#create
#         poll DELETE /polls/:id(.:format)     polls#destroy
# polls_answers POST   /polls/answers(.:format) answers#create
#              GET    /polls(.:format)         polls#show
#      answers PATCH  /answers(.:format)       answers#update
#              PUT    /answers(.:format)       answers#update
