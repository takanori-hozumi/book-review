Rails.application.routes.draw do

  get 'books/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get "homes/about" => "homes#about"

  resources :users, only: [:new, :create, :index, :show, :edit, :update]
  resources :books
end
