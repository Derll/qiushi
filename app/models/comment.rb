class Comment < ActiveRecord::Base
	belongs_to :guest
	has_many :questions
end
