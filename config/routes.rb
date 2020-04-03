Rails.application.routes.draw do
 
  get 'users/new'
  root 'pages#index'
  
  resources :topics
end
