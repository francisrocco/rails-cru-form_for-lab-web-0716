Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :show, :edit, :update]
  resources :genres, only: [:new, :create, :show, :edit, :update]
  resources :songs, only: [:new, :create, :index, :show, :edit, :update]
end
