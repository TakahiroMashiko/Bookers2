Rails.application.routes.draw do
  get 'users/show'
  get 'books/new'
  get 'books/create'
  get 'books/index'
  get 'books/show'
  get 'books/destroy'
  get 'homes/top'
  devise_for :users
end
