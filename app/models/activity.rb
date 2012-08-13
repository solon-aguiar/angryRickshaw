class Activity < ActiveRecord::Base
  attr_accessible :name, :category, :description, :location, :rating
end
