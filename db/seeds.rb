# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

20.times do 
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Job.field, zip_code: Faker::Address.zip)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
30.times do
  appointment = Appointment.create!(date: Faker::Date.forward(days:28), doctor: Doctor.find(rand(Doctor.first.id..Doctor.last.id)), patient: Patient.find(rand(Patient.first.id..Patient.last.id)))
end 
