class User < ApplicationRecord
  has_many :attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :attendances, source: :attended_event
  has_many :created_events, foreign_key: :creator_id, class_name: :Event
  validates :full_name, presence: true
  validates :username, presence: true
  validates :email, presence: true
  def upcoming_events
    attended_events.select { |t| t.event_date.to_s > Time.now.to_s }
  end

  def previous_events
    attended_events.select { |t| t.event_date.to_s < Time.now.to_s }
  end

  def upcoming_created_events
    created_events.select { |t| t.event_date.to_s > Time.now.to_s }
  end

  def previous_created_events
    created_events.select { |t| t.event_date.to_s < Time.now.to_s }
  end
end
