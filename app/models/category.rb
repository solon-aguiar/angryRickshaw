class Category < ActiveRecord::Base
	attr_accessible :name

	has_many :location

	validates :name, :presence => true
end
