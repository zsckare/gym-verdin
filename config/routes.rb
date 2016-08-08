Rails.application.routes.draw do
  # Namespace for the API
  # Api with subdomain, api.mysite.org as '/...'
    # namespace :api,
    #   defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/'  do
    # end
  # Api uri formated mysite.org/api/...
  namespace :api, defaults: { format: :json } do

  end

  
end
