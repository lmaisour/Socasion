class Event < ActiveRecord::Base
	has_many :attendees
	has_many :users, through: :attendees, dependent: :destroy
	default_scope -> { order('created_at DESC') }
end
