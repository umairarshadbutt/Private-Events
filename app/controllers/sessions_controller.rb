class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(username: params[:login][:username])

    if @user
      flash.notice = 'You have logged in successfully'
      session[:user_id] = @user.id.to_s
      session[:username] = @user.username
      redirect_to @user
    else
      flash.notice = 'Login failed. Something went wrong'
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    session.delete(:username)
    flash.notice = 'You have logged out successfully'
    @current_user = nil
    redirect_to root_url
  end
end
