Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :favorites, path: 'my_list', only: %i[index create]
    end
  end
  devise_for :users
  # root action to fetch vuejs files.
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
