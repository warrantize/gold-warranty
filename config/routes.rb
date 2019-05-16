Rails.application.routes.draw do
  # get 'warranties/index'
  # get 'warranties/create'
  # get 'warranties/new'
  # get 'warranties/edit'
  # get 'warranties/show'
  # get 'warranties/update'
  # get 'warranties/destroy'
  devise_for :users
  get 'page/home'
  root to: 'pages#home'
  resources :warranties
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
