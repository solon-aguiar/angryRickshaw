class Activity < ActiveRecord::Base
	attr_accessible :name, :location

	belongs_to :location

	validates :name, presence: true
	validates :location, presence: true
end
