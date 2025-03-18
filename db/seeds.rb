# db/seeds.rb
require 'faker'
puts "Seeding data..."
# Create Clinics

clinics = []

5.times do
  clinics << Clinic.create!(
    name: Faker::Company.name,
    address: Faker::Address.city
  )
end
puts "Created #{clinics.count} clinics."

# Create Users (Doctors and Patients)
users = []
doctors = []
patients = []
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "password",
    is_doctor: true,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  profile = Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    dob: Faker::Date.birthday(min_age: 30, max_age: 65),
    user_id: user.id
  )
  doctor = Doctor.create!(
    user_id: user.id,
    clinic_id: clinics.sample.id,
    speciality: Faker::Educator.subject
  )
  users << user
  doctors << doctor
end
puts "Created #{doctors.count} doctors."
20.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "password",
    is_doctor: false,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  profile = Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    dob: Faker::Date.birthday(min_age: 18, max_age: 90),
    user_id: user.id
  )
  users << user
  patients << user
end
puts "Created #{patients.count} patients."
# Create Schedules for Doctors
doctors.each do |doctor|
  Schedule.create!(
    doctor_id: doctor.id,
    monday_start_time: "09:00",
    monday_end_time: "17:00",
    tuesday_start_time: "09:00",
    tuesday_end_time: "17:00",
    wednesday_start_time: "09:00",
    wednesday_end_time: "17:00",
    thursday_start_time: "09:00",
    thursday_end_time: "17:00",
    friday_start_time: "09:00",
    friday_end_time: "17:00"
  )
end
puts "Created schedules for all doctors."
# Create Appointments
30.times do
  doctor = doctors.sample
  patient = patients.sample
  Appointment.create!(
    user_id: patient.id,
    doctor_id: doctor.id,
    time: Faker::Time.forward(days: 30, period: :morning)
  )
end
puts "Created 30 random appointments."
puts "Seeding completed!"
