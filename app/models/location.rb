class Location < ActiveRecord::Base
	attr_accessible :address, :description, :latitude, :longitude, :name, :picture, :category

	belongs_to :category

	validates :name, presence: true
	validates :longitude, :numericality => { :greater_than => -180, :less_than_or_equal_to => 180 }, presence: true
	validates :latitude, :numericality => { :greater_than => -90, :less_than_or_equal_to => 90 }, presence: true

end
