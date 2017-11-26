class Entrenador::BaseController < ActionController::Base
    protect_from_forgery with: :exception
    layout 'coach'
  end
  