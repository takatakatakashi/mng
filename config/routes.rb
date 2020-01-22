Rails.application.routes.draw do
  root to: 'mangas#index'
  resources :mangas
  resources :tags
end
