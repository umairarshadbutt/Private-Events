module EventsHelper
  def check
    return true if current_user?
  end
  def eventAttandance
    return true if @event.attendees.empty?
  end
end
