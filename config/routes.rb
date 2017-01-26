Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/show'
  get 'tweets/new'
  post "tweets" => "tweets#create"

  get 'users/new'
  get 'users/show'

  root 'static_pages#home'
  get    '/help',   to: 'static_pages#help'
  get    '/about',  to: 'static_pages#about'
  get    '/contact',to: 'static_pages#contact'
  get    '/home',   to: 'static_pages#home'
  get    '/signup', to: 'users#new'
  get    '/login',  to: 'session#new'
  post   '/login',  to: 'session#create'
  delete '/logout', to: 'session#destroy'
  resources :users
end
