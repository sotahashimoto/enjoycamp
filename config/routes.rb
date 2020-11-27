Rails.application.routes.draw do
  devise_for :users

  scope module: :public do
    root to: 'homes#top'
  end

  namespace :public do
    resources :users, only: [:show, :edit, :update]

    # キャンプ場
    get "campsites/top" => "campsites#top"
    resources :campsites, only: [:show, :index, :edit, :create, :update, :destroy] do
      # キャンプ場口コミ
      resources :comments, only: [:show, :create]
      # キャンプ場お気に入り
      resources :favorites, only: [:create, :destroy]
      # キャンプ参加者募集
      resources :recruitments, only: [:show, :index, :create, :destroy] do
        get "activate" => "recruitments#activate"
        # キャンプ参加希望
        resources :participations, only: [:index, :create, :destroy]
      end
    end
  end
end