class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #require 'carrierwave'
  #require 'carrierwave/orm/activerecord'
  protect_from_forgery with: :exception
  
  
end
