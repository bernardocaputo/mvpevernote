class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception
  	before_action :authenticate_user!
  	include CanCan::ControllerAdditions

  	#REMOVE THIS LINE - THIS IS ONLY TO MAKE POSTMAN WORKS
	skip_before_filter :verify_authenticity_token
end
