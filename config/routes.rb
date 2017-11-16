require 'api_constraints'

Rails.application.routes.draw do
  resources :assessments
  resources :posts
  resources :blogs
  resources :clients
  resources :coaches
  resources :disciplines
  resources :exercises
  resources :categories
  root 'welcome#index'

 

  # Change path to '/' if you want direct access to users views
  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
    omniauth: 'users/omniauth'
  }, paths: {confirmation: 'verification'}


end
