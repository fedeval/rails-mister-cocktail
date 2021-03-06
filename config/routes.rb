Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
    resources :favorites, only: [:create]
  end
  resources :doses, only: [:destroy]
  resources :dashboard, only: [:index]
end
