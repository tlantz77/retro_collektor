# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Collection.delete_all
Game.delete_all

User.create(username: "Homer", password_hash: "password")
User.create(username: "Bart", password_hash: "password")
User.create(username: "Lisa", password_hash: "password")

Collection.create(title: "Homer's SNES games", user_id: 1)
Collection.create(title: "Homer's Genesis games", user_id: 1)
Collection.create(title: "Bart's SNES games", user_id: 2)
Collection.create(title: "Bart's Gameboy games", user_id: 2)
Collection.create(title: "Lisa's Genesis games", user_id: 3)
Collection.create(title: "Lisa's Playstation games", user_id: 3)

Game.create(title: "Chrono Trigger", system: "Super Nintendo", year: "1995", value: "149.99", collection_id: 3)
Game.create(title: "Resident Evil", system: "Playstation", year: "1996", value: "30.00", collection_id: 6)
Game.create(title: "Streets of Rage 2", system: "Genesis", year: "1993", value: "25.49", collection_id: 2)





