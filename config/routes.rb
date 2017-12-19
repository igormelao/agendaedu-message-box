Rails.application.routes.draw do
  root to: 'messages#index'
  get  'messages',              to: 'messages#index'
  get  'messages/new',          to: 'messages#new'
  post 'messages',              to: 'messages#create'
  get  'messages/show/:id',     to: 'messages#show'
  put  'messages/archive/:id',  to: 'messages#archive'
  devise_for :users, :controllers => { registrations: 'registrations' }
end
