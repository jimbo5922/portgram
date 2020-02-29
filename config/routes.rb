Rails.application.routes.draw do
  root 'main_page#main'
  get 'main_page/main'
end