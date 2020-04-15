Rails.application.routes.draw do
  delete 'topics/destroy'
  delete 'inspects/destroy'
  root 'sessions#new'
  
  get '/new1', to: 'inspects#new1'
  get '/new2', to: 'inspects#new2'
  get '/show1', to: 'inspects#show1'
  get '/show2', to: 'inspects#show2'
  
  resources :users
  resources :topics
  resources :inspects
  resources :choices
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
