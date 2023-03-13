# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning the databese..."
User.destroy_all

puts "Creating new data"
User.create!(first_name: "Ayano", last_name: "Umemoto", email: "asdfg@gmail.com", password: 123455)

User.create!(first_name: "Hakim", last_name: "Benkacem", email: "qwert@gmail.com", password: 678989)

puts "Finished..."
