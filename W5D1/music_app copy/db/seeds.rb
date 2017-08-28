# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create(email: Faker::Internet.email, password: Faker::Internet.password)
u2 = User.create(email: Faker::Internet.email, password: Faker::Internet.password)
u3 = User.create(email: Faker::Internet.email, password: Faker::Internet.password)
u4 = User.create(email: Faker::Internet.email, password: Faker::Internet.password)
u5 = User.create(email: Faker::Internet.email, password: Faker::Internet.password)
