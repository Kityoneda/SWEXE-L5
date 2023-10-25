Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/destroy'
  resources :users
  root 'users#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
