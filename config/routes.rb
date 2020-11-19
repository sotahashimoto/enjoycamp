Rails.application.routes.draw do
  devise_for :users

  scope module: :public do
    root to: 'homes#top'
  end

  namespace :public do
    resources :campsites, only: [:show, :index, :edit, :create, :update, :destroy] do
      resources :comments, only: [:show, :create, :destroy]
    end
    resources :favorites, only: [:create, :destroy]
  end
end