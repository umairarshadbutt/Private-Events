module SessionsHelper
  def current_user?
    !session[:username].nil?
  end

  def current_user
    return unless (user_id = session[:id])

    @current_user ||= User.find(user_id)
  end
end
