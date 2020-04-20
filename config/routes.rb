Rails.application.routes.draw do
  delete 'topics/destroy'
  delete 'inspects/destroy'
  root 'sessions#new'

  get '/show2', to: 'inspects#show2'
  
  resources :users
  resources :topics
  resources :inspects
  resources :inspect1s
  resources :choices
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
