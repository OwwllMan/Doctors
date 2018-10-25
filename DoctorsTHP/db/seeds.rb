# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
 doctorspec = ["Cardiologue", "Endocrinologue", "Psychiatre", "Dentiste"]
 Doctor.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, specialty: doctorspec.sample, postal_code: rand(10000..95000))
end

20.times do
 Patient.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name)
end

30.times do
 Appoitment.create(date: Faker::Date.forward(200).to_datetime, doctor_id: rand(30), patient_id: rand(50))
end
