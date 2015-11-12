class Comment < ActiveRecord::Base
	
	belongs_to :property
	belongs_to :user

	validates :comment_description, presence: true
end
