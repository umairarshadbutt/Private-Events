class AddIndexesToForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_index :events, :creator_id
    add_index :attendances, :attended_event_id
    add_index :attendances, :attendee_id
  end
end
