require 'api_constraints'

Rails.application.routes.draw do
  resources :notes
  resources :foods
  namespace :entrenador do
    get 'comments/index'
  end

  resources :comments
  namespace :admin do
    get 'welcome/index'
  end

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
    resources :calculate
    resources :comments
    resources :blogs do
      resources :posts
    end
    resources :notes
  end
  namespace :entrenador do
    root 'welcome#index'
    resources :comments
    get 'commentarios', to: "comments#backend"
    resources :blogs do
      resources :posts
    end
    resources :posts
    resources :clients
  end

  namespace :admin do
    root 'welcome#index'
    resources :clients
    resources :coaches
    resources :disciplines
    resources :exercises
    resources :categories
  end

end
