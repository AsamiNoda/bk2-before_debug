Rails.application.routes.draw do
  root 'home#top'
  get 'home/about'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update] do
    get '/follow' => 'relationships#follow'
    get '/follower' => 'relationships#follower'
  end
  resources :relationships, only: [:create, :destroy]
  resources :books do
  	resources :book_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end

end