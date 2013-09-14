# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.create({name: "Kevin VanderLugt", email: "kevin.vanderlugt@gmail.com"})
u.licenses.create({state: "WA", number:"1111"})

u = User.create({name: "Bob Jones", email: "bjones@gmail.com"})
u.licenses.create({state: "WA", number:"11231"})

u = User.create({name: "Some dude", email: "some.dude@gmail.com"})
u.licenses.create({state: "OR", number:"1111"})

u = User.create({name: "Another guy", email: "ag@gmail.com"})
u.licenses.create({state: "WA", number:"1111"})

u = User.create({name: "hotmail dude", email: "hotmaildude@hotmail.com"})
u.licenses.create({state: "FL", number:"22222"})
