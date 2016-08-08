Rails.application.config.generators do |g|
g.test_framework :rspec, fixture: true
  g.fixture_replacement :factory_girl, dir: 'spec/factories'
  g.helper = true # set false if the app is only an api
  g.helper_specs true # set false if the app is only an api
  g.view_specs true # set false if the app is only an api
  g.stylesheets = false
  g.javascripts = false
end
