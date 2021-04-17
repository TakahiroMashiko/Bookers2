Rails.application.routes.draw do
  resources :users
  resources :books
  root 'homes#top'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # アプリケーションのトップ画面を「/」で表示させる
  get '/', to: 'homes#index'
  # ルートパス
  root :to => 'homes#index'
end
