class RemoveAttrFromUsersAcitvity < ActiveRecord::Migration[6.0]
  def change
    remove_column :users_activities, :users_activity_log_id
  end
end
