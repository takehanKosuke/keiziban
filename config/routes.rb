Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :articles
  resources :users
end
