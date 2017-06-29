# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.find(1)
Post.create(name: 'craft', description: 'Best out of waste', user: u)
Post.create(name: 'craft', description: 'kirigami', user: u)
Post.create(name: 'craft', description: 'Origami', user: u)
Post.create(name: 'craft', description: 'Quilling', user: u)
Post.create(name: 'craft', description: 'Pop sticks', user: u)
Post.create(name: 'craft', description: 'Newspaper', user: u)
Post.create(name: 'craft', description: 'Old books', user: u)
Post.create(name: 'craft', description: 'Folding books', user: u)

u = User.find(4)
Post.create(name: 'craft', description: 'Best out of waste', user: u)
Post.create(name: 'craft', description: 'kirigami', user: u)
Post.create(name: 'craft', description: 'Origami', user: u)
Post.create(name: 'craft', description: 'Quilling', user: u)
Post.create(name: 'craft', description: 'Pop sticks', user: u)
Post.create(name: 'craft', description: 'Newspaper', user: u)
Post.create(name: 'craft', description: 'Old books', user: u)
Post.create(name: 'craft', description: 'Folding books', user: u)