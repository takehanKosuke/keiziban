Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  post '/welcome/tweet' => 'welcome#tweet', as: :tweet

  resources :articles
  resources :users
end
