Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets
  resources :actions
  resources :sfs
  resources :sports
  resources :yankees
  resources :gamblings
  resources :gags
  resources :everydays
  resources :dramas
  resources :professions
  resources :loves
  resources :ages
  resources :gourmets
  resources :others
end
