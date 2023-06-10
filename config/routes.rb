Rails.application.routes.draw do
  devise_for :users
  get 'comics/index'
  root to: "comics#index"
end
