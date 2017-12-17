Rails.application.routes.draw do
  root to: 'messages#index'
  post 'messages',              to: 'messages#create'
  get  'messages/show/:id',     to: 'messages#show'
  put  'messages/archive/:id',  to: 'messages#archive'
  devise_for :users
end
