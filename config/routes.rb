Rails.application.routes.draw do
  devise_for :users
  resource :home, :except => [:index, :create, :new, :edit, :show, :update, :destroy] do
    collection do
    get 'about'
    end
  end
  resources :users, only: [:index, :edit, :show, :update]
  resources :books
  # 投稿フォーム
  post 'books' => 'books#create'
  # アプリケーションのトップ画面を「/」で表示させる
  get '/', to: 'homes#top'
  # ルートパス
  root :to => 'homes#top'
end
