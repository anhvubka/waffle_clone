class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'octokit'
  protect_from_forgery with: :exception
  helper_method :current_user
 	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
 	def application_authenticate
 		@@app_client = Octokit::Client.new client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET']
 	end
  def record_not_found
    render 'shared/not_found' 
  end 

  
  
end