module EventsHelper
  def check
    return true if current_user?
  end
end
