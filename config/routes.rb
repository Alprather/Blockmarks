Rails.application.routes.draw do
  resources :topics do
    resources :bookmarks
  end
  devise_for :users
  resources :users, only: [:show, :index] do
    resources :topics
  end
  get 'welcome/index'

  get 'welcome/about'
  root 'welcome#index'
end
