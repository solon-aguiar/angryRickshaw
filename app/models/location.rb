class Location < ActiveRecord::Base
	attr_accessible :address, :category, :description, :latitude, :longitude, :name, :picture

	#TODO create the test before
	#validates :name, presence: true
	#validates :longitude, presence: true
	#validates :latitude, presence: true
end
