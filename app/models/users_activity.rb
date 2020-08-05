class UsersActivity < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :howlong, :performances, presence: {message: "Either 'how long' or 'performances' are required !"}

end
