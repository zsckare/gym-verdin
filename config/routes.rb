require 'api_constraints'

Rails.application.routes.draw do
  root 'welcome#index'
  
  get 'registro', to: 'clients#new'
  get 'login-client', to: 'clients#front'
  post 'login-c', to: 'clients#login'
  get 'login-coach', to:'coaches#front'
  post 'login-coach-back', to: 'coaches#login'
  
  resources :assessments
  resources :posts
  resources :blogs
  resources :clients
  resources :coaches
  resources :disciplines
  resources :exercises
  resources :categories
  
  

  # Change path to '/' if you want direct access to users views
  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
    omniauth: 'users/omniauth'
  }, paths: {confirmation: 'verification'}
  namespace :client do
    root 'welcome#index'
    resources :valorar
    resources :routines
    resources :blogs do
      resources :posts
    end
  end
  namespace :entrenador do
    root 'welcome#index'
    resources :blogs do
      resources :posts
    end
  end

end
