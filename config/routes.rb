require 'api_constraints'

Rails.application.routes.draw do
  get 'welcome/index'

  # Namespace for the API

  # Api with subdomain, api.mysite.org as '/...'
    # namespace :api,
    #   defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/'  do
    # end

  # Api uri formated mysite.org/api/...
  namespace :api, defaults: { format: :json } do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
    end
  end

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
