Rails.application.routes.draw do

  root  to: 'home#top'
  get '/home/about' => 'home#about'
  devise_for :users
  resources :users
  resources :books
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

end