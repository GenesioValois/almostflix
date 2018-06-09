Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :favorites, path: 'my_list', only: %i[index create]
      delete '/my_list/:type/:id', to: 'favorites#destroy'
      resources :reviews, only: %i[index create]
      resources :searches, path: 'search', only: :index
      get '/dashboard', to: 'dashboards#index', as: 'dashboard'
      resources :series, only: :show
      resources :recommendations, only: :index
      resources :movies, only: :show do
        member do
          get '/executions', to: 'executions#show'
          put '/executions', to: 'executions#update'
        end
      end
    end
  end
  devise_for :users
  # root action to fetch vuejs files.
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
