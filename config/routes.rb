Rails.application.routes.draw do
  root 'main_page#main'
  get '/signup', to: 'users#new'
end