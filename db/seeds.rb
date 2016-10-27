# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Game.delete_all

User.create(username: "Homer", password: "homer")
User.create(username: "Bart", password: "bart")
User.create(username: "Lisa", password: "lisa")


Game.create(title: "Chrono Trigger", system: "Super Nintendo", year: "1995", value: "149.99", user_id: 1)
Game.create(title: "Resident Evil", system: "Playstation", year: "1996", value: "30.00", user_id: 1)
Game.create(title: "Streets of Rage 2", system: "Genesis", year: "1993", value: "25.49", user_id: 2)
Game.create(title: "Super Mario Land", system: "Gameboy", year: "1989", value: "25.49", user_id: 3)
Game.create(title: "Final Fantasy 3", system: "Super Nintendo", year: "1994", value: "45.00", user_id: 3)
Game.create(title: "Shining Force", system: "Genesis", year: "1993", value: "30.00", user_id: 2)
