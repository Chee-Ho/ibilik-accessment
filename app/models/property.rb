class Property < ActiveRecord::Base
	
  belongs_to :user
	has_many :comments
	has_many :bookings

	validates :property_description, presence: true
	validates :property_rental, presence: true


end
