# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create(name: "Shopping")
c2 = Category.create(name: "Restaurant")
Location.create(name: "Commercial Street", description: "It's a commercial street", picture: "http://www.placehold.it/150x150", address: "Commercial St", latitude: 12.9819369, longitude: 77.6089657, category: c1)
Location.create(name: "UB City Mall", description: "It's a fancy mall", picture: "http://www.placehold.it/150x150", address: "MG Road", latitude: 12.9715987, longitude: 12.9715987, category: c1)
Location.create(name: "Java Restaurant", description: "The worst service ever", picture: "http://www.placehold.it/150x150", address: "Diamond District", latitude: 12.9589757, longitude: 77.64416109, category: c2)
Location.create(name: "Barbeque Nation", description: "It's a good place to eat spicy meat", picture: "http://www.placehold.it/150x150", address: "100 Feat Road", latitude: 12.9619782, longitude: 77.6413672, category: c2)



Activity.create(name: "Java", category: "Restaurant", description: "Test", location: "Diamond District", rating: 1)
Activity.create(name: "China Pearl", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 4)
Activity.create(name: "Toits", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 5)
Activity.create(name: "BBQ Nation", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 1)
Activity.create(name: "Mainland China", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 3)
Activity.create(name: "California Pizza", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 4.5)
Activity.create(name: "Mercure", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 4.5)
Activity.create(name: "Leela Palace", category: "Restaurant", description: "Test", location: "Old Airport Road", rating: 4.5)
Activity.create(name: "Spaghetti Kitchen", category: "Restaurant", description: "Test", location: "100 Feet Road", rating: 4.5)

Activity.create(name: "Commercial Street", category: "Shopping", description: "Test", location: "Commercial Street", rating: 4.5)
Activity.create(name: "100 Feet Road", category: "Shopping", description: "Test", location: "100 Feet Road", rating: 4.5)
Activity.create(name: "Forum", category: "Shopping", description: "Test", location: "MG Road", rating: 4.5)
Activity.create(name: "UB City", category: "Shopping", description: "Test", location: "MG Road", rating: 4.5)
Activity.create(name: "Total", category: "Shopping", description: "Test", location: "MG Road", rating: 4.5)
Activity.create(name: "MG Road", category: "Shopping", description: "Test", location: "MG Road", rating: 4.5)

Activity.create(name: "Toits", category: "Pub", description: "Test", location: "MG Road", rating: 4.5)
Activity.create(name: "The Biere Club", category: "Pub", description: "Test", location: "MG Road", rating: 4.5)
Activity.create(name: "Hardrock Cafe", category: "Pub", description: "Test", location: "MG Road", rating: 4.5)

Activity.create(name: "Hint", category: "Night Club", description: "Test", location: "MG Road", rating: 4.5)
Activity.create(name: "UB Skye", category: "Night Club", description: "Test", location: "MG Road", rating: 4.5)

Activity.create(name: "Paint Ball", category: "Games", description: "Test", location: "In the middle of India", rating: 4.5)
Activity.create(name: "Amoeba", category: "Games", description: "Test", location: "MG Road", rating: 4.5)

Activity.create(name: "Hampi", category: "Tourist", description: "Test", location: "Hampi", rating: 4.5)
Activity.create(name: "Mysore", category: "Tourist", description: "Test", location: "MySore", rating: 4.5)
Activity.create(name: "Shiva Temple", category: "Tourist", description: "Test", location: "Old Airport Road", rating: 4.5)
Activity.create(name: "Guruduwara", category: "Tourist", description: "Test", location: "Somewhere", rating: 4.5)

Activity.create(name: "Diamond District", category: "Apartment", description: "Test", location: "Old Airport Road", rating: 4.5)