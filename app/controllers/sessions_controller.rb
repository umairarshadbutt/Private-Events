class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:login][:username])

    if user
      session[:user_id] = user.id.to_s
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/login'
  end
end
