Rails.application.routes.draw do
  delete 'topics/destroy'
  delete 'inspects/destroy'
  get '/peges', to: 'pages#index'
  root 'sessions#new'

  resources :users
  resources :topics
  resources :inspects
  resources :choices
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
