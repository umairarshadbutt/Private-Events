module EventsHelper
  def check
    return true if current_user?
  end

  def event_attandance
    return true if @event.attendees.empty?
  end
end
