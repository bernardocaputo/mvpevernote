class ApplicationController < ActionController::Base
	skip_before_filter :verify_authenticity_token
	before_action :authenticate_user!
  	protect_from_forgery with: :exception
  	include CanCan::ControllerAdditions
end
