module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def current_user?(user)
  	current_user == user
  end
  def logged_in?
  	!current_user.nil?
  end   
  def log_out
  	session.delete(:user_id)
  	session.delete(:token)
  	@current_user = nil
  end
end
