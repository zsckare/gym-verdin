require 'api_constraints'

Rails.application.routes.draw do
  devise_for :users
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


end
