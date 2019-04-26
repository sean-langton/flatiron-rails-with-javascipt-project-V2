module ApplicationHelper
  def set_user
    @user = User.find_by(id: session[:user_id])
    redirect_to '/' if @user.nil?
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
  
  def logged_in
    session[:user_id]
  end

end
