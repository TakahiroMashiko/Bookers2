Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
end
