# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  ["Test User 1", "Test", "testuser1@email.com"],
  ["Test User 2", "Test", "testuser2@email.com"],
  ["Test User 3", "Test", "testuser3@email.com"],
  ["Test User 4", "Test", "testuser4@email.com"]
]

league_list = [
  ["Test League 1", 4, 1],
  ["Test League 2", 10, 1]
]

fleet_list = [
  ["Test Fleet 1", 1, 1],
  ["Test Fleet 2", 1, 2],
  ["Test Fleet 3", 1, 3],
  ["Test Fleet 4", 1, 4],
  ["Test Fleet 5", 2, 1]
]

ship_list = [
  ['Boaty McBoatFace', 'Handymax', 1000, 500],
  ['The Skipper', 'Handy Size', 500, 250],
  ['The Guarantee', 'Panamax', 2000, 750],
  ['Too Big To Be a Fishing Boat', 'Neopanamax', 3000, 2000],
  ['Yacht 3000', 'Capesize', 5000, 2500],
  ['El Hefe', 'Chinamax', 9000, 3000]
]

voyage_list = [
  ["New York", "London", 200, 100, 1, 1],
  ["Los Angeles", "Tokyo", 200, 100, 2, 1]
]

user_list.each do |username, password, email|
  User.create(username: username, password: password, email: email)
end

league_list.each do |name, num_of_fleets, admin_id|
  League.create(name: name, num_of_fleets: num_of_fleets, admin_id: admin_id)
end

fleet_list.each do |name, league_id, user_id|
  Fleet.create(name: name, league_id: league_id, user_id: user_id)
end

ship_list.each do |name, size, max_cargo, max_distance|
  Ship.create(name: name, size: size, max_cargo: max_cargo, max_distance: max_distance)
end

Ship.all.each do |ship|
  Fleet.first.ships << ship
end

Fleet.find(2).ships << Ship.first

voyage_list.each do |dep_port, arr_port, distance, cargo, fleet_id, ship_id|
  Voyage.create(dep_port: dep_port, arr_port: arr_port, distance: distance, cargo: cargo, fleet_id: fleet_id, ship_id: ship_id)
end
