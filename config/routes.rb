Rails.application.routes.draw do
 
  delete 'topics/destroy'
  delete 'inspects/destroy'
  root 'pages#index'
  
  resources :users
  resources :topics
  resources :inspects
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
end
