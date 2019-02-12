class AddEventIdToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :event_id, :integer
    add_index :attendances, :event_id
  end
end
