class AddAttendeeIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attendee_id, :integer
    add_index :attendances, :attendee_id
  end
end
