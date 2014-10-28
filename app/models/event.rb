class Event < ActiveRecord::Base
	has_many :attendees
	has_many :users, through: :attendees

	has_many :comments
	
	default_scope -> { order('created_at DESC') }
end
