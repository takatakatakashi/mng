Rails.application.routes.draw do
  devise_for :users
  root to: 'mangas#index'
  resources :mangas
  resources :tags
end
