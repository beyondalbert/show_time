class Feedback < ActiveRecord::Base
  validates :email, presence: true
end
