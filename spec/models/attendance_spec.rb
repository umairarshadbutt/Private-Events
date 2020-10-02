require 'rails_helper'
RSpec.describe Attendance, type: :model do
  user = User.create(full_name: 'Ahmad', username: 'Ahmad', email: 'Ahmad@email.com')
  Event.create(title: 'Test event', description: 'Test title', event_date: '2020-10-22', creator_id: user.id)
  u = User.first
  e = Event.first
  test_array = u.attended_events << e
  it 'it should be equal to event title' do
    test_array.each do |attendee|
      expect(attendee.title).to eq('Test event')
    end
  end
end
