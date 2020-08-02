class Activity < ApplicationRecord
  has_many :users_activities
  has_many :users, through: :users_activities
end
