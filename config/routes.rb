Rails.application.routes.draw do
  root to: 'maps#index'
  resources :maps, only: [:index, :show] do
    resources :posts, only: [:create]
    resources :comments, only: [:create]
  end
  get '/map_request', to: 'maps#map', as: 'map_request'
end
