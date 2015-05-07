class UsersController < ApplicationController
include SessionsHelper
  def show
  	user = User.find(params[:id])
  	@user = user if current_user == user
  end
  
end
