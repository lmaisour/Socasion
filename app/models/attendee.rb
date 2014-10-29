class Attendee < ActiveRecord::Base
	belongs_to :event
	belongs_to :user

	has_many :comments

	validates :event_id, :uniqueness => {:scope => [:user_id, :event_id]}
end
