class Event < ActiveRecord::Base

	validates :title,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :location, presence: true
	validates_uniqueness_of :attendee_id
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


	has_many :attendees
	has_many :users, through: :attendees

	has_many :comments
	
	default_scope -> { order('created_at DESC') }
end
