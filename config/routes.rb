Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :show, :edit, :update] do
    resources :songs, only: [:new, :create]
  end

  resources :genres, only: [:new, :create, :show] do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:new, :create, :index, :show]
end
