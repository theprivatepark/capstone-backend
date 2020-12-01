# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Client.destroy_all
Event.destroy_all


Admin.create(email: "anneypark@gmail.com", password: "1234")

amy = Client.create(first_name: "Amy", last_name: "Sikhammountry", email: "amy@gmail.com", password: "1111")
giulia = Client.create(first_name: "Giulia", last_name: "Cajati", email: "giulia@gmail.com", password: "1111")
melina = Client.create(first_name: "Melinda", last_name: "Diaz", email: "melinda@gmail.com", password: "1111")
jina = Client.create(first_name: "Jina", last_name: "Strickland", email: "jina@gmail.com", password: "1111")
kalada = Client.create(first_name: "Kalada", last_name: "William-Jumbo", email: "kalada@gmail.com", password: "1111")
kevin = Client.create(first_name: "Kevin", last_name: "Sheehan", email: "kevin@gmail.com", password: "1111")
hyrum = Client.create(first_name: "Hyrum", last_name: "Butler", email: "hyrum@gmail.com", password: "1111")
mark = Client.create(first_name: "Mark", last_name: "Foley", email: "mark@gmail.com", password: "1111")
shannon = Client.create(first_name: "Shannon", last_name: "Nabors", email: "shannon@gmail.com", password: "1111")
adam = Client.create(first_name: "Adam", last_name: "Johnson", email: "adamjohnson@gmail.com", password: "1111")

Event.create(client_id: amy.id, event_name: , location_name: ,location_address: ,date: ,time: ,status: ,admin_id: 1)

