Rails.application.routes.draw do
  resources :artists, only: [:new, :create, :show, :edit, :update] do
    resources :songs, only: [:new, :create]
  end

  resources :genres, only: [:new, :update, :create, :edit, :show] do
    resources :songs, only: [:new, :create]
  end

  resources :songs, only: [:new, :create, :index, :show, :edit, :update]
end
