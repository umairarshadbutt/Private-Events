require 'rails_helper'
RSpec.describe Event, type: :model do
  event = Event.new
  user = User.create(full_name: 'Ahmad', username: 'Ahmad', email: 'Ahmad@email.com')
  it 'title should be present' do
    event.title = nil
    expect(event).to_not be_valid
  end
  it 'description should be present' do
    event.description = nil
    expect(event).to_not be_valid
  end
  it 'event_date should be present' do
    event.event_date = nil
    expect(event).to_not be_valid
  end
  it 'All parameters must have values' do
    event.title = 'Test title'
    event.description = 'Title for testing purpose'
    event.event_date = '2020-10-22'
    event.creator_id = user.id
    expect(event).to be_valid
  end
end
