Rails.application.routes.draw do
  root 'welcome#index'
  resources :polls, only: [:index, :create, :destroy]
  resource :polls, only: [:show] do
    resource :answers, only: [:create]
  end
end
