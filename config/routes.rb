# Rails.application.routes.draw do
#   resources :users
#   resources :comments
#   resources :providers
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  resources :providers, only: [:index, :show, :create, :update, :destroy] do
    collection do
      post '/userId', to: 'providers#userId'
    end
  end

  resources :users, only: [:index, :show, :create] do
    collection do
      post '/login', to: 'users#login'
    end
  end
end
