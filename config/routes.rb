Rails.application.routes.draw do
  get 'homes/index'
  devise_for :users
  resources :products
  root "homes#index"
end
