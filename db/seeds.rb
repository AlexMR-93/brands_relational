# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@brand1 = Brand.create!(name: "Ford", country_of_origin: "USA", num_of_models: 10, domestic: true)
@focus = @brand1.cars.create!(name: "Focus", price: 90000, maunual_transmission: true)
@flex = @brand1.cars.create!(name: "Flex", price: 12000, maunual_transmission: false)
@brand2 = Brand.create!(name: "Chevy", country_of_origin: "USA", num_of_models: 5, domestic: true)
@cobalt = @brand2.cars.create!(name: "Cobalt", price: 10000, maunual_transmission: false)
@camero = @brand2.cars.create!(name: "Camero", price: 13000, maunual_transmission: true)
@brand3 = Brand.create!(name: "Toyota", country_of_origin: "Japan", num_of_models: 4, domestic: false)
@prius = @brand3.cars.create!(name: "Prius", price: 11000, maunual_transmission: true)
@tundra = @brand3.cars.create!(name: "Tundra", price: 14000, maunual_transmission: true)
@tacoma = @brand3.cars.create!(name: "Tacoma", price: 15000, maunual_transmission: false)
