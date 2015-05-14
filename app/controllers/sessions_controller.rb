# sessions_controller.rb
class SessionsController < ApplicationController   
require 'octokit'
  def create     
  	auth = request.env["omniauth.auth"]     
    logger.debug "#{auth}" 
  	user = User.find_by_uid(auth["uid"]) || User.create_with_omniauth(auth)    
  	session[:user_id] = user.id     
    session[:token] = auth["credentials"]["token"]
    self.application_authenticate
  	redirect_to user_path(user), :notice => "Signed in!"
  end
 
  def destroy
    session[:user_id] = nil
    session[:token] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
 
end