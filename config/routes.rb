Rails.application.routes.draw do
  devise_for :users
  ## 使わなかったら削除する
  # root 'books#index'
  # resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :homes, only: [:top]
  resources :books
  resources :users, only: [:show, :index, :edit, :update]
  # アプリケーションのトップ画面を「/」で表示させる
  get '/', to: 'homes#top'
  # ルートパス
  root :to => 'homes#top'
end
