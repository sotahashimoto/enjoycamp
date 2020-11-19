Rails.application.routes.draw do
  devise_for :users

  scope module: :public do
    root to: 'homes#top'
  end
end