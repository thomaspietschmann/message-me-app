# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."
User.create(username: "Thomas", password: "sunshine");
User.create(username: "Shiva", password: "sunshine");
User.create(username: "Steffi", password: "sunshine");
User.create(username: "Pedro", password: "sunshine");
User.create(username: "Italiani", password: "sunshine");
User.create(username: "Fernando", password: "gorda");
puts "Done"
