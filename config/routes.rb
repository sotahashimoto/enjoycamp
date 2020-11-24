Rails.application.routes.draw do
  devise_for :users

  scope module: :public do
    root to: 'homes#top'
  end

  namespace :public do
    resources :campsites, only: [:show, :index, :edit, :create, :update, :destroy] do
      # キャンプ場口コミ
      resources :comments, only: [:show, :create, :destroy]
      # キャンプ場お気に入り
      resources :favorites, only: [:create, :destroy]
      # キャンプ参加者募集
      resources :recruitments, only: [:show, :index, :create, :destroy] do
        get "activate" => "recruitments#activate"
        # キャンプ参加希望
        resources :participations, only: [:create, :destroy]
      end
    end
  end
end