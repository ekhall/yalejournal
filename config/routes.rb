Yalejournal::Application.routes.draw do
  root to: 'articles#index'
  resources :users
  resources :suggests
  resources :articles
end
