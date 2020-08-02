class CreateUsersActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :users_activities do |t|
      t.date :when
      t.integer :howlong
      t.string :performances
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
