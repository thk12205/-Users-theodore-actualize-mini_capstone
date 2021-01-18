# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.new(name: "Squeegee", price: 8, image_url: "website.com/img/1234", description: "car cleaner")
product1.save
product2 = Product.new(name: "Monopoly", price: 20, image_url: "website.com/img/5678", description: "board game")
product2.save

#name:string price:integer image_url:string description:string