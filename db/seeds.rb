# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
shelter = Shelter.find_or_create_by!(foster_program: true, name: "Ferret Shelter", city: "Denver", rank: 1)
application = Application.find_or_create_by!(name: "Pabu", street_address: "123 Ferret St", city: "Erie", state: "Co", zipcode: "80516")
pet = Pet.find_or_create_by!(name: "Loki", age: 1, breed: "brown", adoptable: true, shelter_id: shelter.id)
