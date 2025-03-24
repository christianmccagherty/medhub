# db/seeds.rb
require 'faker'
require "open-uri"
user_one_photo_file = URI.parse("https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=640:*").open

puts "Cleaning up database..."
Appointment.destroy_all
Schedule.destroy_all
Review.destroy_all
Doctor.destroy_all
Profile.destroy_all
User.destroy_all
Clinic.destroy_all
Disease.destroy_all
Specialty.destroy_all
puts "Database cleaned."

puts "Seeding data..."

# === Create Langauges ===

langauges = [
  "English", "French", "German", "Portuguese", "Spanish", "Turkish", "Italian", "Klingon", "Greek"
]

langauges.each { |langauge| Langauge.create!(name: langauge) }
puts "Created #{langauges.count} langauges."

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

  profile = Profile.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    dob: Faker::Date.birthday(min_age: 30, max_age: 65),
    user_id: user.id
  )
  profile.photo.attach(io: user_one_photo_file, filename: "cavendish.png", content_type: "image/png")
  profile.save!
  doctor = Doctor.create!(
    user_id: user.id,
    clinic_id: clinics.sample.id
  )
  doctor.specialties << mapped_specialties.sample(rand(1..2))
  doctors << doctor
end
puts "Created #{doctors.count} doctors with mapped specialties."

doctors.each do |doctor|
  (1..3).to_a.sample.times { DoctorLangauge.create!(doctor: doctor, langauge: Langauge.all.sample) }
end

puts "Added langauges to doctors"

# === Create Patients ===
patients = []
20.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "password",
    is_doctor: false,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  profile_two = Profile.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    dob: Faker::Date.birthday(min_age: 18, max_age: 90),
    user_id: user.id
  )
  profile_two.photo.attach(io: user_one_photo_file, filename: "cavendish.png", content_type: "image/png")
  profile_two.save!
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
valid_times = [
  Time.zone.parse("2025-03-24 10:00"), # Monday
  Time.zone.parse("2025-03-25 11:30"), # Tuesday
  Time.zone.parse("2025-03-26 09:00"), # Wednesday
  Time.zone.parse("2025-03-27 14:00"), # Thursday
  Time.zone.parse("2025-03-28 16:30"), # Friday
  Time.zone.parse("2025-03-31 10:30"), # Monday
  Time.zone.parse("2025-04-01 13:00"), # Tuesday
  Time.zone.parse("2025-04-02 15:30"), # Wednesday
  Time.zone.parse("2025-04-03 09:30"), # Thursday
  Time.zone.parse("2025-04-04 11:00")  # Friday
]

valid_times.each do |appointment_time|
  doctor = doctors.sample
  patient = patients.sample
  next if doctor.schedule.blank?

  Appointment.create!(
    user_id: patient.id,
    doctor_id: doctor.id,
    time: appointment_time
  )
end
puts "Created 10 appointments."

puts "Seeding completed!"
