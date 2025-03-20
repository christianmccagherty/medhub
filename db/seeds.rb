# db/seeds.rb
require 'faker'

puts "Cleaning up database..."
Appointment.destroy_all
Schedule.destroy_all
Doctor.destroy_all
Profile.destroy_all
User.destroy_all
Clinic.destroy_all
Disease.destroy_all
Specialty.destroy_all
puts "Database cleaned."

puts "Seeding data..."

# === Create Specialties ===

specialties = [
  "General Medicine", "Pediatrics", "Dermatology", "Cardiology", "Neurology",
  "Psychiatry", "Orthopedics", "Gastroenterology", "Endocrinology", "Pulmonology",
  "Urology", "Nephrology", "Ophthalmology", "Otolaryngology (ENT)", "Rheumatology",
  "Oncology", "Hematology", "Allergy and Immunology", "Geriatrics",
  "Obstetrics and Gynecology", "Dentistry", "Radiology", "Surgery", "Sports Medicine",
  "Infectious Diseases"
]

specialties.each { |name| Specialty.create!(name: name) }
puts "Created #{Specialty.count} specialties."

# === Create Diseases and link to specialties ===
disease_specialty_map = {
  "Hypertension" => ["Cardiology", "General Medicine"],
  "Diabetes" => ["Endocrinology", "General Medicine"],
  "Asthma" => ["Pulmonology", "Allergy and Immunology"],
  "Depression" => ["Psychiatry"],
  "Migraine" => ["Neurology"],
  "Eczema" => ["Dermatology"],
  "Coronary Artery Disease" => ["Cardiology"],
  "Chronic Back Pain" => ["Orthopedics", "Rheumatology"],
  "Allergies" => ["Allergy and Immunology", "Pulmonology"],
  "Influenza" => ["Infectious Diseases", "General Medicine"]
}

Disease.create!(disease_specialty_map.keys.map { |disease_name| { name: disease_name } })
puts "Created #{Disease.count} diseases."

disease_specialty_map.each do |disease_name, specialty_names|
  disease = Disease.find_by(name: disease_name)
  specialty_names.each do |specialty_name|
    specialty = Specialty.find_by(name: specialty_name)
    disease.specialties << specialty if specialty
  end
end
puts "Linked diseases to specialties."

# === Create Clinics ===
clinics = []
5.times do
  clinics << Clinic.create!(
    name: Faker::Company.name,
    address: Faker::Address.city
  )
end
puts "Created #{clinics.count} clinics."

# === Create Users & Doctors with linked specialties ===
mapped_specialties = Specialty.where(name: disease_specialty_map.values.flatten.uniq)
doctors = []
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "password",
    is_doctor: true,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    dob: Faker::Date.birthday(min_age: 30, max_age: 65),
    user_id: user.id
  )
  doctor = Doctor.create!(
    user_id: user.id,
    clinic_id: clinics.sample.id
  )
  doctor.specialties << mapped_specialties.sample(rand(1..2))
  doctors << doctor
end
puts "Created #{doctors.count} doctors with mapped specialties."

# === Create Patients ===
patients = []
20.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "password",
    is_doctor: false,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  Profile.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    dob: Faker::Date.birthday(min_age: 18, max_age: 90),
    user_id: user.id
  )
  patients << user
end
puts "Created #{patients.count} patients."

# === Create Schedules for Doctors ===
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

# === Create Appointments ===
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
