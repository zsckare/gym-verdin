class Client::ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  layout 'client'
  end
  