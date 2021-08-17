Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "/home/about" => "homes#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:edit, :create, :index, :show, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
end
