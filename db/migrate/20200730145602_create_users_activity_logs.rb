class CreateUsersActivityLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :users_activity_logs do |t|
      t.integer :howlong
      t.string :performances

      t.timestamps
    end
  end
end
