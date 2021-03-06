Rails.application.routes.draw do
  
  root 'products#home'
  resources :products do
    resources :reviews, only: [:show, :create, :destroy, :new]
  end
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

end
