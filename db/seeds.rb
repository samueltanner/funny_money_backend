# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###USER INITIAL SEED
# user = User.create!(name: "Sam", email: "sam@example.com", password: "password")
# user = User.create!(name: "Eugene", email: "eugene@example.com", password: "password")

###POSITIONS INITIAL SEED
# position = Position.create!(user_id: 1, symbol: "BA", purchase_price: 241.63, purchase_qty: 10)
# position = Position.create!(user_id: 2, symbol: "ROKU", purchase_price: 320.01, purchase_qty: 20)
# position = Position.create!(user_id: 2, symbol: "LABU", purchase_price: 79.53, purchase_qty: 40)
# position = Position.create!(user_id: 1, symbol: "ARKW", purchase_price: 153.19, purchase_qty: 19)

# t = Transaction.create!(user_id: "2", position_id: "2", purchase_price: 320.01, purchase_qty: 20, status_open: true)
# t = Transaction.create!(user_id: "2", position_id: "3", purchase_price: 79.53, purchase_qty: 40, status_open: true)
# t = Transaction.create!(user_id: "1", position_id: "5", purchase_price: 755.09, purchase_qty: 3, status_open: true)
t = Transaction.create!(user_id: "1", position_id: "1", purchase_price: 215.129, purchase_qty: 10, status_open: true)
