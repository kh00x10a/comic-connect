Rails.application.routes.draw do
  devise_for :users
  get 'comics/index'
  root to: "comics#index"
  resources :comics
    collection do
      get 'search'
    end
end
