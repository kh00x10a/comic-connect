Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  get 'comics/index'
  root to: "comics#index"
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :comics do
    collection do
      get 'search'
    end
    resources :comments, only: :create
  end
  resources :rooms, only: [:new, :create, :index, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
