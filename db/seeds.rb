# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Category.create(name: "Shopping")
c2 = Category.create(name: "Restaurant")

l1 = Location.create(name: "Commercial Street", description: "It's a commercial street", picture: "http://www.placehold.it/150x150&text=Commercial+Street", address: "Commercial Street, Bangalore, Karnataka, India", latitude: 12.9819369, longitude: 77.6089657, category: c1)
l2 = Location.create(name: "UB City Mall", description: "It's a fancy mall", picture: "http://www.placehold.it/150x150&text=UB+City+Mall", address: "Vittal Mallya Road, Bangalore, Karnataka, India", latitude: 12.9715987, longitude: 77.5959627, category: c1)
l3 = Location.create(name: "Java Restaurant", description: "The worst service ever", picture: "http://www.placehold.it/150x150&text=Java+Restaurant", address: "Diamond District, Bangalore, Karnataka, India", latitude: 12.9589757, longitude: 77.64416109, category: c2)
l4 = Location.create(name: "Barbeque Nation", description: "It's a good place to eat spicy meat", picture: "http://www.placehold.it/150x150&text=Barbeque+Nation", address: "100 Feet Rd, Indira Nagar, Bengaluru, Karnataka, India", latitude: 12.9619782, longitude: 77.6413672, category: c2)

Activity.create(name: c1.name, location: l1)
Activity.create(name: c1.name, location: l2)
Activity.create(name: c2.name, location: l3)
Activity.create(name: c2.name, location: l4)