class Event < ActiveRecord::Base
	has_many :attendees
	has_many :users, through: :attendees
	default_scope -> { order('created_at DESC') }
end
