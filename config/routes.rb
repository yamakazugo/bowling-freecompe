Rails.application.routes.draw do
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "scores#top"
  resources :scores do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
