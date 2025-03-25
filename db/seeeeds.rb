
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
Language.destroy_all
puts "Database cleaned."

languages = [
  "English", "French", "German", "Portuguese", "Spanish", "Turkish", "Italian", "Greek"
]

languages.each { |language| Language.create!(name: language) }
puts "Created #{languages.count} languages."

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
  "Influenza" => ["Infectious Diseases", "General Medicine"],
  "Headache" => ["Neurology", "General Medicine"],
  "Cold" => ["Infectious Diseases", "General Medicine"]
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


# ---------------------------------- Patients -----

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


# ------------------------------ Clinics  ----------------------------
mapped_specialties = Specialty.where(name: disease_specialty_map.values.flatten.uniq)

centre_medical_saint = Clinic.new(
  name: "Centre Médical Saint",
  address: "128 Rue Saint-Honoré, 75001 Paris, France"
)

puts "Created Centre Medical Saint"


clinica_salud_integral = Clinic.new(
  name: "Clínica Salud Integral",
  address: "Calle de Alcalá 212, 28028 Madrid, Spain"
)

puts "Created Clínica Salud Integral"


praxisgemeinschaft_viktualienmarkt = Clinic.new(
  name: "Praxisgemeinschaft am Viktualienmarkt",
  address: "Frauenstraße 12, 80469 München, Germany"
)

puts "Created Praxisgemeinschaft am Viktualienmarkt"
# ---------------------------------------------------------------------

studio_medico_brera = Clinic.new(
  name: "Studio Medico Brera",
  address: "Via Brera 28, 20121 Milano MI, Italy"
)

alessandro = User.new(
  email: "alessandro.ferri@breramed.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 328 234 5678"
)

alessandro_profile = Profile.new(
  first_name: "Alessandro",
  last_name: "Ferri",
  address: "Via Brera 28, 20121 Milano MI, Italy",
  dob: Date.new(1978, 3, 10),
  user_id: alessandro.id
)

dr_alessandro = Doctor.new(
  user_id: alessandro.id,
  clinic_id: studio_medico_brera.id
)
studio_medico_brera.save!
alessandro.save!
alessandro_profile.save!
dr_alessandro.specialties << "Orthopedics"
dr_alessandro.save!

DoctorLanguage.create!(
  doctor: dr_alessandro,
  language: Language.find_by("Italian")
)

DoctorLanguage.create!(
  doctor: dr_alessandro,
  language: Language.find_by("English")
)

Schedule.create!(
  doctor_id: dr_alessandro.id,
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

patient = patients.sample

Appointment.create!(
  user_id: patient.id,
  doctor_id: dr_alessandro.id,
  time: valid_times[0]
)
# For showing
#  Disease: Chronic Back Pain with doctor search
#  Doctor needs to have a specialty in "Orthopedics" and/or "Rheumatology"
#  Doctor needs to speak italian
puts "Created Studio Medico Brera"
# -------------------------------------------------------------------------

scandinavian_health_group = Clinic.new(
  name: "Scandinavian Health Group",
  address: "Drottninggatan 88, 111 36 Stockholm, Sweden"
)

puts "Created Scandinavian Health Group"
#

centre_sante_jean_jaures = Clinic.new(
  name: "Centre de Santé Jean Jaurès",
  address: "18 Avenue Jean Jaurès, 69007 Lyon, France"
)

puts "Created Centre de Santé Jean Jaurès"
#

medinova_lisboa = Clinic.new(
  name: "Medinova Lisboa",
  address: "Av. da Liberdade 245, 1250-143 Lisboa, Portugal"
)

puts "Created Medinova Lisboa"
#

mediHaus_zurich = Clinic.new(
  name: "MediHaus Zurich",
  address: "Dufourstrasse 45, 8008 Zürich, Switzerland"
)

puts "Created MediHaus Zurich"
#

centre_medical_saint = Clinic.new(
  name: "Centre Médical Saint",
  address: "128 Rue Saint-Honoré, 75001 Paris, France"
)

puts "Created Centre Medical Saint"


london_bridge_hospital = Clinic.new(
  name: "London Bridge Hospital",
  address: "27 Tooley St, London SE1 2PR"
)
#  For showing
#  Disease: Diabetes with clinic search
#  Doctor needs to have a specialty in "Endocrinology" and/or "General Medicine"
#  Doctor needs to speak english
puts "Created London Bridge Hospital"
#

centrum_medyczne_nowa_zdrowie = Clinic.new(
  name: "Centrum Medyczne Nowa Zdrowie",
  address: "ul. Marszałkowska 45/49, 00-648 Warszawa, Poland"
)

puts "Created Centrum Medyczne Nowa Zdrowie"
#

cabinet_medical_parc = Clinic.new(
  name: "Cabinet Médical du Parc",
  address: "7 Rue du Parc, 67000 Strasbourg, France"
)

puts "Created Cabinet Médical du Parc"
#

centre_hospitalier_sainte_claire = Clinic.new(
  name: "Centre Hospitalier Sainte-Claire",
  address: "Rue de Lausanne 43, 1201 Genève, Switzerland"
)

puts "Created Centre Hospitalier Sainte-Claire"
#

clinica_santa_chiara_torino = Clinic.new(
  name: "Clinica Santa Chiara Torino",
  address: "Via Giuseppe Garibaldi 12, 10122 Torino TO, Italy"
)

puts "Created Clinica Santa Chiara Torino"
#

hausaerztezentrum_koeln = Clinic.new(
  name: "Hausärztezentrum Altstadt Köln",
  address: "Alter Markt 9, 50667 Köln, Germany"
)

puts "Created Hausärztezentrum Altstadt Köln"
#

prahamed_specialist_center = Clinic.new(
  name: "PrahaMed Specialist Center",
  address: "Vodičkova 28, 110 00 Praha 1, Czech Republic"
)

puts "Created PrahaMed Specialist Center"
#

centro_medico_la_barceloneta = Clinic.new(
  name: "Centro Médico La Barceloneta",
  address: "Carrer de la Maquinista 10, 08003 Barcelona, Spain"
)

puts "Created Centro Médico La Barceloneta"
#

clinique_du_canal_saintmartin = Clinic.new(
  name: "Clinique du Canal Saint-Martin",
  address: "92 Quai de Jemmapes, 75010 Paris, France"
)

puts "Created Clinique du Canal Saint-Martin"
#

centro_medico_firenze = Clinic.new(
  name: "Centro Medico Firenze",
  address: "Viale dei Mille 30, 50131 Firenze FI, Italy"
)

puts "Created Centro Medico Firenze"
#

medpoint_antwerpen = Clinic.new(
  name: "MedPoint Antwerpen",
  address: "Mechelsesteenweg 64, 2018 Antwerpen, Belgium"
)

puts "Created MedPoint Antwerpen"

klinik_am_schlossgarten = Clinic.new(
  name: "Klinik am Schlossgarten",
  address: "Schlossstraße 3, 70176 Stuttgart, Germany"
)

puts "Created Klinik am Schlossgarten"


puts "Created #{Clinic.count} clinics."
# ----------------------------------------------------------------------------
