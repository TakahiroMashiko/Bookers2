Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books, only: [:new, :create, :index, :show, :destroy]

  # アプリケーションのトップ画面を「/」で表示させる
  get '/', to: 'homes#index'
  # ルートパス
  root :to => 'homes#index'
end
