Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  post 'create_user', to: 'users#create'
  root :to =>  'welcome#index'
  resources :chatrooms, param: :slug
  resources :messages
end
