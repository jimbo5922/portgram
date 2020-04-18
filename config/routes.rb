Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  get 'sessions/new'
  root 'main_page#main'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/newpost', to: 'microposts#new'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :microposts, only: [:create, :destroy, :show] do
    resources :comments, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  resources :testsessions, only: :create
  resources :likes, only: [:create, :destroy]
end