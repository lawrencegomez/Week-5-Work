# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vampire.destroy_all

vampires = Vampire.create([
		{name: "Angelus", age: 256, sire: "Darla", staked: false},
		{name: "Darla", age: 312, sire: "unknown", staked: false},
		{name: "Drusilla", age: 197, sire: "Angelus", staked: false},
		{name: "Spike", age: 215, sire: "Drusilla", staked: false}
	])