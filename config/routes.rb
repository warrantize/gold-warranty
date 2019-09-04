Rails.application.routes.draw do
  devise_for :users
  get 'page/home'
  root to: 'pages#home'
  resources :products do
    resources :warranties do
      resources :returns do
        resources :messages
      end

    end
  end
get '/.well-known/brave-rewards-verification.txt', to: static('brave-rewards-verification.txt')

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
