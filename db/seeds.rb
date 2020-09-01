# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Cleaning all Users ...'
User.destroy_all

puts 'Cleaning all Vehicules ...'
Vehicule.destroy_all

puts 'Creating users'
user1 = User.create!(email: 'user1@gmail.com', password: '123456789', first_name: 'Test', last_name: 'One')
user2 = User.create!(email: 'user2@gmail.com', password: '123456789', first_name: 'Test', last_name: 'Two')
user3 = User.create!(email: 'user3@gmail.com', password: '123456789', first_name: 'Test', last_name: 'Three')
user4 = User.create!(email: 'user4@gmail.com', password: '123456789', first_name: 'Test', last_name: 'Four')

puts 'Creating vehicules ...'

vehicule1_pic = URI.open('https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1367&q=80')
vehicule1 = Vehicule.new(brand: 'BMW', capacity: 3, features: 'AC, radio, gps, leather', price: 20, location: 'Madrid', user_id: user1.id, vehicule_category: 'Car')
vehicule1.photos.attach(io: vehicule1_pic, filename: 'bmw.png', content_type: 'image/png')
vehicule1.save!

vehicule2_pic = URI.open('https://images.unsplash.com/photo-1590590202163-32abd9ba85cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1369&q=80')
vehicule2 = Vehicule.new(brand: 'Opel', capacity: 5, features: 'AC, radio, gps, leather', price: 15, location: 'London', user_id: user2.id, vehicule_category: 'Car')
vehicule2.photos.attach(io: vehicule2_pic, filename: 'opel.png', content_type: 'image/png')
vehicule2.save!

vehicule3_pic = URI.open('https://images.unsplash.com/photo-1541969487406-1f1adf3884ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80')
vehicule3 = Vehicule.new(brand: 'Mercedes', capacity: 2, features: 'AC, radio, gps, leather', price: 50, location: 'Barcelona', user_id: user3.id, vehicule_category: 'Truck')
vehicule3.photos.attach(io: vehicule3_pic, filename: 'mercede.png', content_type: 'image/png')
vehicule3.save!

vehicule4_pic = URI.open('https://images.unsplash.com/photo-1553260188-75a8d6205b6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
vehicule4 = Vehicule.new(brand: 'Tesla', capacity: 5, features: 'AC, radio, gps, leather', price: 45, location: 'New York', user_id: user4.id, vehicule_category: 'Car')
vehicule4.photos.attach(io: vehicule4_pic, filename: 'tesla.png', content_type: 'image/png')
vehicule4.save!

vehicule5_pic = URI.open('https://images.unsplash.com/photo-1482581156092-8551a379c8ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
vehicule5 = Vehicule.new(brand: 'Ford', capacity: 4, features: 'AC, radio, gps, leather', price: 25, location: 'Los Angeles', user_id: user4.id, vehicule_category: 'PickUp')
vehicule5.photos.attach(io: vehicule5_pic, filename: 'ford.png', content_type: 'image/png')
vehicule5.save!

vehicule6_pic = URI.open('https://images.unsplash.com/photo-1527247043589-98e6ac08f56c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
vehicule6 = Vehicule.new(brand: 'Ferrari', capacity: 2, features: 'AC, radio, gps, leather', price: 150, location: 'Italy', user_id: user3.id, vehicule_category: 'Convertible')
vehicule6.photos.attach(io: vehicule6_pic, filename: 'ferrari.png', content_type: 'image/png')
vehicule6.save!

vehicule7_pic = URI.open('https://images.unsplash.com/photo-1571986929789-95307bbfa7c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
vehicule7 = Vehicule.new(brand: 'Ford', capacity: 5, features: 'AC, radio, gps, leather', price: 25, location: 'Texas', user_id: user2.id, vehicule_category: 'SUV')
vehicule7.photos.attach(io: vehicule7_pic, filename: 'fordpu.png', content_type: 'image/png')
vehicule7.save!

vehicule8_pic = URI.open('https://www.moto125.cc/images/stories/motos/m784/f102.jpg')
vehicule8 = Vehicule.new(brand: 'Niu', capacity: 1, features: 'radio, gps, leather', price: 10, location: 'Valencia', user_id: user1.id, vehicule_category: 'Motorbike')
vehicule8.photos.attach(io: vehicule8_pic, filename: 'niu.png', content_type: 'image/png')
vehicule8.save!

vehicule9_pic = URI.open('https://images.unsplash.com/photo-1446446765936-ffb206d1c0f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
vehicule9 = Vehicule.new(brand: 'Honda', capacity: 2, features: 'radio, gps, leather', price: 15, location: 'Paris', user_id: user1.id, vehicule_category: 'Motorbike')
vehicule9.photos.attach(io: vehicule9_pic, filename: 'honda.png', content_type: 'image/png')
vehicule9.save!

vehicule10_pic = URI.open('https://images.unsplash.com/photo-1471466054146-e71bcc0d2bb2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
vehicule10 = Vehicule.new(brand: 'Yamaha', capacity: 2, features: 'radio, gps, leather', price: 15, location: 'Prague', user_id: user2.id, vehicule_category: 'Motorbike')
vehicule10.photos.attach(io: vehicule10_pic, filename: 'yamaha.png', content_type: 'image/png')
vehicule10.save!
