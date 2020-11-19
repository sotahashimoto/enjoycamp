Rails.application.routes.draw do
  devise_for :users

  scope module: :public do
    root to: 'homes#top'
  end

  namespace :public do
    resources :campsites, only: [:show, :index, :edit, :create, :update, :destroy]
    resources :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end