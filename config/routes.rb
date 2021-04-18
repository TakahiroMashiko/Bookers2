Rails.application.routes.draw do
  devise_for :users
  # get 'home/about' => 'homes#about'
  resources :users, only: [:show, :index, :edit, :update]
  resources :books
  # アプリケーションのトップ画面を「/」で表示させる
  get '/', to: 'homes#top'
  # ルートパス
  root :to => 'homes#top'
end
