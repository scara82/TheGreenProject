# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user1 = User.create(name: 'Marta', email: 'marta@gmail.com',password: '123', score: 0 );
user2 = User.create(name: 'Sara', email: 'sara@gmail.com',password: '123', score: 0 );
