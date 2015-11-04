class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit
  helper_method :current_city
  after_action :verify_authorized, :except => :index

  def current_city
    City.find_by_name(params[:city].downcase) if params[:city]
  end
end
