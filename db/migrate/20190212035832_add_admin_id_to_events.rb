class AddAdminIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :admin_id, :integer
    add_index :events, :admin_id
  end
end
