class ApplicationController < ActionController::Base
  # Protect applications from CSRF vulnerability.
  protect_from_forgery with: :exception
  # all the application views require that the user be logged in except
  # indexes and/or decided otherwiser in the controllers
  before_action :authenticate_user!, :except => [:index]
  # Manage/tune access right / policies with Pundit Gem
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # catch a authorization error (user should not be able to access)

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # behavior is an alert flash and a redirect to Homepage
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
