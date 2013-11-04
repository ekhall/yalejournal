Yalejournal::Application.routes.draw do
  root to: 'static_pages#home'
  resources :users
  resources :suggests
  resources :articles
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup',    to: 'users#new',        via: :get
  match '/signin',    to: 'sessions#new',     via: :get
  match '/signout',   to: 'sessions#destroy', via: :get
end
