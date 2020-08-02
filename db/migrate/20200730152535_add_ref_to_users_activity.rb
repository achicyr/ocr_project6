class AddRefToUsersActivity < ActiveRecord::Migration[6.0]
  def change
    add_reference :users_activities, :users_activity_log, foreign_key: true
  end
end
