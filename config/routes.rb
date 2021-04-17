Rails.application.routes.draw do
  resources :users
  resources :books
  devise_for :users

  # アプリケーションのトップ画面を「/」で表示させる
  get '/', to: 'homes#index'
  # ルートパス
  root :to => 'homes#index'
end
