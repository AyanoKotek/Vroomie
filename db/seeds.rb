# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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
car1 = Car.new(brand: "FORD", description: "It's fairly new. Spacious inside and all in all it's a nice car", price: 400, year: 2020, address:"80 Bd Jean Jaurès, 92110 Clichy")
car1.photos.attach(io: File.open('app/assets/images/Classic-Car-Hire.png'), filename: "cars.png", content_type: "image/png")
car1.photos.attach(io: File.open('app/assets/images/download-car.png'), filename: "cars.png", content_type: "image/png")
car1.photos.attach(io: File.open('app/assets/images/honda-car.png'), filename: "cars.png", content_type: "image/png")
car1.user = ayano
car1.save!

car2 = Car.new(brand: "range rover", description: "Very beautiful car", price: 300, year: 2021, address: "Rte de la Pyramide, 75012 Paris")
car2.photos.attach(io: File.open('app/assets/images/range-rover.png'), filename: "cars.png", content_type: "image/png")
car2.photos.attach(io: File.open('app/assets/images/land-rover.png'), filename: "cars.png", content_type: "image/png")
car2.photos.attach(io: File.open('app/assets/images/sedan-transparent.png'), filename: "cars.png", content_type: "image/png")
car2.user = hakim
car2.save!

car3 = Car.new(brand: "Classic 1967", description: "It's a super cool car. Nice powerful engine", price: 200, year: 3021, address: "1 Rue de la Légion d'Honneur, 75007 Paris")
car3.photos.attach(io: File.open('app/assets/images/Classic-Old-Car.png'), filename: "sedan-transparent.png", content_type: "image/png")
car3.photos.attach(io: File.open('app/assets/images/land-rover.png'), filename: "3ars.png", content_type: "image/png")
car3.photos.attach(io: File.open('app/assets/images/sedan-transparent.png'), filename: "cars.png", content_type: "image/png")
car3.user = hakim
car3.save!

car4 = Car.new(brand: "JAGUAR", description: "It's fairly new. Spacious inside and all in all it's a nice car", price: 700, year: 2020, address:"35 Rue Jean Jaurès, 94350 Villiers-sur-Marne")
car4.photos.attach(io: File.open('app/assets/images/jaguar.png'), filename: "cars.png", content_type: "image/png")
car4.photos.attach(io: File.open('app/assets/images/download-car.png'), filename: "cars.png", content_type: "image/png")
car4.photos.attach(io: File.open('app/assets/images/honda-car.png'), filename: "cars.png", content_type: "image/png")
car4.user = ayano
car4.save!

car5 = Car.new(brand: "nissan Z", description: "Very beautiful car", price: 300, year: 2021, address: "12 Av. Ampère, 78180 Montigny-le-Bretonneux")
car5.photos.attach(io: File.open('app/assets/images/nissan-z.png'), filename: "cars.png", content_type: "image/png")
car5.photos.attach(io: File.open('app/assets/images/land-rover.png'), filename: "cars.png", content_type: "image/png")
car5.photos.attach(io: File.open('app/assets/images/sedan-transparent.png'), filename: "cars.png", content_type: "image/png")
car5.user = hakim
car5.save!

car6 = Car.new(brand: "lotus", description: "It's a super cool car. Nice powerful engine", price: 800, year: 3021, address: "12 Av. du Château de la Malmaison, 92500 Rueil-Malmaison")
car6.photos.attach(io: File.open('app/assets/images/lotus-evora.png'), filename: "sedan-transparent.png", content_type: "image/png")
car6.photos.attach(io: File.open('app/assets/images/land-rover.png'), filename: "3ars.png", content_type: "image/png")
car6.photos.attach(io: File.open('app/assets/images/sedan-transparent.png'), filename: "cars.png", content_type: "image/png")
car6.user = hakim
car6.save!

# puts "Creating Booking data..."
# date1 = Date.parse('3rd Feb 2023')
# booking1 = Booking.new(date: date1)
# booking1.user = francois
# booking1.car = car1
# booking1.save!

# date2 = Date.parse('31th March 2023')
# booking2 = Booking.new(date: date2)
# booking2.user = abdullah
# booking2.car = car2
# booking2.save!
puts "Finished!"
