class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      success
    else
      redirect_to login_path, notice: "Error finding user, please confirm username and password and try again."
    end
  end

  def fbcreate
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.username = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
      u.password = "facebook_#{SecureRandom.hex}"
    end
    if @user
      success
    else
      redirect_to login_path, notice: "Error connection with Facebook, please try again later."
    end
  end


  def destroy
    session.delete :user_id
    redirect_to root_url, notice: "You've been logged out of Fantasy Fleets."
  end

  def success
    session[:user_id] = @user.id
    redirect_to user_path(@user), notice: "Welcome back to Fantasy Fleets!"
  end

  def auth
    request.env['omniauth.auth']
  end

end
