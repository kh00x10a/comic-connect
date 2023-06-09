Rails.application.routes.draw do
  get 'comics/index'
  root to: "comics#index"
end
