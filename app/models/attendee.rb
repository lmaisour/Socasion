class Attendee < ActiveRecord::Base
	belongs_to :event
	belongs_to :user

	validates :event_id, :uniqueness => {:scope => [:user_id, :event_id]}
end
