FactoryGirl.define do
	factory :category do
		id 0
		name "Default Category"
	end

	factory :location do
		name "Test Location"
		description "Test Location Description"
		picture "http://www.placehold.it/450x250"
		address "Test Address"
		latitude 1.0
		longitude 2.0

		association :category
	end

	factory :activity do
		name "Test Activity"
		association :location
	end
end