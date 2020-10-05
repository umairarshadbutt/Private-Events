module UsersHelper
  def validate
    return true if current_user.nil? && !current_user?
  end

  def check
    return true if current_user?
  end
end
