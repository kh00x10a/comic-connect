Rails.application.routes.draw do
  devise_for :users
  get 'comics/index'
  root to: "comics#index"
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :comics do
    collection do
      get 'search'
    end
  end
end
