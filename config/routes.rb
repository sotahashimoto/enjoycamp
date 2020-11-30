Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admin do
    resources :campsites, only: [:new, :index, :create, :show, :edit, :update, :destroy]
  end

  scope module: :public do
    root to: 'homes#top'
  end

  namespace :public do
    get "search", to: 'campsites#search'
    post '/homes/guest_sign_in', to: 'homes#new_guest'

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