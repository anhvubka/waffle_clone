class UsersController < ApplicationController
include SessionsHelper
require 'octokit'

  def show
  	@user = User.find(params[:id])
  	if @user 
  		@github_user = Octokit::Client.new(access_token: session[:token]) 
  	end
  end
  
end
