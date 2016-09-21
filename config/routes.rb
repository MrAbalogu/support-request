Rails.application.routes.draw do

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    '/home'   => 'users#home'
  root   'users#index'
  
  resources :requests
  resources :users

  resources :users do
  	resources :requests
  end 	

  resources :requests do
    resources :comments
  end 

end
