# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning the databese..."

Booking.destroy_all
Car.destroy_all
User.destroy_all

puts "Creating User data..."
ayano = User.create!(first_name: "Ayano", last_name: "Umemoto", email: "ayano@gmail.com", password: 123456)
hakim = User.create!(first_name: "Hakim", last_name: "Benkacem", email: "hakim@gmail.com", password: 123456)
francois = User.create!(first_name: "Francois", last_name: "Vallat", email: "francois@gmail.com", password: 123456)
abdullah = User.create!(first_name: "Abdullah", last_name: "Alameen", email: "abdullah@gmail.com", password: 123456)

puts "Creating Car data..."
car1 = Car.new(brand: "bmw", description: "It's a nice car", price: 200, year: 2020)
car1.user = ayano
car1.save!

car2 = Car.new(brand: "Mercedes", description: "Very beautiful car", price: 300, year: 2021)
car2.user = hakim
car2.save!

car2 = Car.new(brand: "Mercedes", description: "Very beautiful car", price: 300, year: 2021)
car2.user = hakim
car2.save!

puts "Creating Booking data..."
date1 = Date.parse('3rd Feb 2023')
booking1 = Booking.new(date: date1)
booking1.user = francois
booking1.car = car1
booking1.save!

date2 = Date.parse('31th March 2023')
booking2 = Booking.new(date: date2)
booking2.user = abdullah
booking2.car = car2
booking2.save!

puts "Finished!"
