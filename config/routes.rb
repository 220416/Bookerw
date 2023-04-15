Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'about' => 'homes#about'
  resources :users, only: [:show, :edit, :index, :update]
  resources :books, only: [:show, :edit, :index, :new, :create, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end