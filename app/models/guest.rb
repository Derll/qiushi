class Guest < ActiveRecord::Base
	has_many :comments
end