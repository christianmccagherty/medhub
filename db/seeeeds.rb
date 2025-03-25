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

langauges = [
  "English", "French", "German", "Portuguese", "Spanish", "Turkish", "Italian", "Klingon", "Greek"
]

langauges.each { |langauge| Langauge.create!(name: langauge) }
puts "Created #{langauges.count} langauges."

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

Clinic.new!(
  name: "",
  address: ""
)


