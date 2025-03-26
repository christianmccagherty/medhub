require "open-uri"
puts "parsing through doctor image urls, might take a while"
one = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939323/vaibhav-vivian-3HIroMoyre8-unsplash_qztvmm.jpg").open
two = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939320/pexels-tima-miroshnichenko-6234600_bo7rvc.jpg").open
three = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939318/pexels-tima-miroshnichenko-5452292_l1xrhl.jpg").open
four = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939314/pexels-sagar-tiwari-988598841-27298085_zqcpr5.jpg").open
five = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939321/tmvmnt-media-rm7rZYdl3rY-unsplash_qisebn.jpg").open
six = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939313/pexels-pedrofurtadoo-28516280_sqbvlu.jpg").open
seven = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939321/siednji-leon-xxP2IgMPMUQ-unsplash_dmxd1a.jpg").open
eight = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939321/roy-k-PukoW35U8JA-unsplash_t1hyos.jpg").open
nine = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939317/pexels-thirdman-5327914_hh3zsf.jpg").open
ten = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939321/pexels-yasinaydin-15752232_t1xwd0.jpg").open
eleven = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939310/pexels-nuptune-7966285_cefekh.jpg").open
puts "halfway through..."
twelve = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939308/pexels-jayrinho-15960478_qepzjk.jpg").open
thirteen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939317/pexels-tima-miroshnichenko-5452195_rg9xul.jpg").open
fourteen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939322/usman-yousaf-pTrhfmj2jDA-unsplash_uq00qj.jpg").open
fifteen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939305/pexels-gustavo-fring-5888186_qxhxlt.jpg").open
sixteen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939312/pexels-pavel-danilyuk-7108283_i17sdp.jpg").open
seventeen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939299/ozkan-guner-AduzI0N9iRI-unsplash_ofx6ky.jpg").open
eighteen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939299/jonas-kakaroto-KIPqvvTOC1s-unsplash_zikivr.jpg").open
nineteen = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939299/muhammad-hicham-X4Akte569V4-unsplash_l3nuzu.jpg").open
twenty = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939298/joey_gqsfem.jpg").open
twentyone = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939318/pexels-thirdman-7659776_ihicfe.jpg").open
twentytwo = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939313/pexels-rdne-6129497_ckv34h.jpg").open
twentythree = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939301/pexels-648298123-20894637_ajov6o.jpg").open
twentyfour = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939298/gc_k9t0zz.jpg").open
puts "almost...."
twentyfive = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939298/humberto-chavez-FVh_yqLR9eA-unsplash_jdulnv.jpg").open
twentysix = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939297/bermix-studio-ODM_VsTM2QQ-unsplash_pvtsap.jpg").open
twentyseven = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742939296/anna-keibalo-9vH-wWpUP3g-unsplash_dk3tku.jpg").open

milano_pic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/Milano_c9wr8t.png").open
london_bridge_pic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/London_Bridge_zyvo2y.jpg").open

onepic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977529/petr-magera-HuWm7malJ18-unsplash_mcl0ck.jpg").open
twopic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977529/smallbox-FFA8yd4OynY-unsplash_rmud10.jpg").open
threepic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977529/Prague_na0h8g.jpg").open
fourpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977529/stuart-poulton-Cyw1t03KMGk-unsplash_z7c5ks.jpg").open
fivepic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977528/Rando1_qnnu6d.jpg").open
sixpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/maxim-tirdea-xayCTz6N2nM-unsplash_m8eht7.jpg").open
sevenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/martha-dominguez-de-gouveia-nMyM7fxpokE-unsplash_rxecfb.jpg").open
eightpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977526/Dentist_f4jp4q.jpg").open
ninepic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977526/cdn-pages-xM_1ZYHOc9E-unsplash_v8gsp6.jpg").open
tenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977526/cdn-pages-xM_1ZYHOc9E-unsplash_v8gsp6.jpg").open
elevenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977525/arseny-togulev-DE6rYp1nAho-unsplash_piz25t.jpg").open
twelvepic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977525/cdc-uN8TV9Pw2ik-unsplash_ihlgjt.jpg").open
thirteenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/jose-losada-HIB5kZNkVjo-unsplash_w3foua.jpg").open
fourteenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/national-cancer-institute-U7hHC8uCXkY-unsplash_x4mos0.jpg").open
fifteenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977525/akram-huseyn-brbF5FSnSgI-unsplash_vi6fzf.jpg").open
sixteenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977525/cdc-Y2lUjUiay-o-unsplash_yas8sp.jpg").open
seventeenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977527/jc-gellidon-UIp163xCV6w-unsplash_r310l1.jpg").open
eighteenpic = URI.parse("https://res.cloudinary.com/dhkgvouv7/image/upload/v1742977525/hush-naidoo-jade-photography-yo01Z-9HQAw-unsplash_dx7zwy.jpg").open



puts "Cleaning up database..."
Appointment.destroy_all
Schedule.destroy_all
Review.destroy_all
DiseaseSpecialty.destroy_all
DoctorSpecialty.destroy_all
Disease.destroy_all
Specialty.destroy_all
Doctor.destroy_all
Clinic.destroy_all
Profile.destroy_all
User.destroy_all
Language.destroy_all
puts "Database cleaned."

languages = [
  "English", "French", "German", "Portuguese", "Spanish", "Turkish", "Italian", "Greek", "Hindi", "Mandarin", "Polish", "Czech", "Arabic",
  "Swedish", "Dutch"
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
  puts "a"
  disease = Disease.find_by(name: disease_name)
  puts "b"
  specialty_names.each do |specialty_name|
    puts "c"
    specialty = Specialty.find_by(name: specialty_name)
    puts "d"
    disease.specialties << specialty if specialty
  end
end
puts "Linked diseases to specialties."

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
  patients << user
end
puts "Created #{patients.count} patients."


# ------------------------------ Clinics  ----------------------------
mapped_specialties = Specialty.where(name: disease_specialty_map.values.flatten.uniq)

centre_medical_saint = Clinic.new(
  name: "Centre Médical Saint",
  address: "128 Rue Saint-Honoré, 75001 Paris, France"
)
centre_medical_saint.photo.attach(io: onepic, filename: "milano")
francois = User.new(
  email: "francois.dupont@cmsaint-honore.fr",
  password: "password",
  is_doctor: true,
  phone_number: "+33 1 45 67 89 01"
)
francois_profile = Profile.new(
  first_name: "François",
  last_name: "Dupont",
  address: "128 Rue Saint-Honoré, 75001 Paris, France",
  dob: Date.new(1975, 2, 18),
  user: francois
)
francois_profile.photo.attach(io: one, filename: "test")
dr_francois = Doctor.new(user: francois, clinic: centre_medical_saint)
francois.save!
francois_profile.save!
dr_francois.specialties << Specialty.find_by(name: "Cardiology")
Review.create!(
  rating: 5,
  content: "Excellent care, very detailed explanation.",
  doctor: dr_francois,
  user: francois
)
dr_francois.save!
DoctorLanguage.create!(doctor: dr_francois, language: Language.find_by(name: "French"))
Schedule.create!(
  doctor_id: dr_francois.id,
  monday_start_time: "08:00",
  monday_end_time: "16:00",
  tuesday_start_time: "08:00",
  tuesday_end_time: "16:00",
  wednesday_start_time: "08:00",
  wednesday_end_time: "16:00",
  thursday_start_time: "08:00",
  thursday_end_time: "16:00",
  friday_start_time: "08:00",
  friday_end_time: "16:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_francois.id, time: valid_times[0])

puts "Created Centre Medical Saint"
# -----------------------------------------------------------------------------------------------------

clinica_salud_integral = Clinic.new(
  name: "Clínica Salud Integral",
  address: "Calle de Alcalá 212, 28028 Madrid, Spain"
)
clinica_salud_integral.photo.attach(io: twopic, filename: "milano")
javier = User.new(
  email: "javier.fernandez@csaludintegral.es",
  password: "password",
  is_doctor: true,
  phone_number: "+34 91 234 5678"
)
javier_profile = Profile.new(
  first_name: "Javier",
  last_name: "Fernández",
  address: "Calle de Alcalá 212, 28028 Madrid, Spain",
  dob: Date.new(1980, 4, 22),
  user: javier
)
javier_profile.photo.attach(io: two, filename: "test")
dr_javier = Doctor.new(user: javier, clinic: clinica_salud_integral)
javier.save!
javier_profile.save!
dr_javier.specialties << Specialty.find_by(name: "Orthopedics")
Review.create!(
  rating: 5,
  content: "Very professional and skilled. Highly recommended.",
  doctor: dr_javier,
  user: javier
)
dr_javier.save!
DoctorLanguage.create!(doctor: dr_javier, language: Language.find_by(name: "Spanish"))
Schedule.create!(
  doctor_id: dr_javier.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_javier.id, time: valid_times[1])

puts "Created Clínica Salud Integral"

# -------------------------------------------------------------------------------------------

praxisgemeinschaft_viktualienmarkt = Clinic.new(
  name: "Praxisgemeinschaft am Viktualienmarkt",
  address: "Frauenstraße 12, 80469 München, Germany"
)
praxisgemeinschaft_viktualienmarkt.photo.attach(io: threepic, filename: "milano")
klaus = User.new(
  email: "klaus.mueller@praxisgemeinschaft.de",
  password: "password",
  is_doctor: true,
  phone_number: "+49 89 234 5678"
)
klaus_profile = Profile.new(
  first_name: "Klaus",
  last_name: "Müller",
  address: "Frauenstraße 12, 80469 München, Germany",
  dob: Date.new(1976, 7, 9),
  user: klaus
)
klaus_profile.photo.attach(io: three, filename: "test")
dr_klaus = Doctor.new(user: klaus, clinic: praxisgemeinschaft_viktualienmarkt)
klaus.save!
klaus_profile.save!
dr_klaus.specialties << Specialty.find_by(name: "Neurology")
Review.create!(
  rating: 5,
  content: "Very knowledgeable and kind. Great doctor.",
  doctor: dr_klaus,
  user: klaus
)
dr_klaus.save!
DoctorLanguage.create!(doctor: dr_klaus, language: Language.find_by(name: "German"))
Schedule.create!(
  doctor_id: dr_klaus.id,
  monday_start_time: "08:00",
  monday_end_time: "16:00",
  tuesday_start_time: "08:00",
  tuesday_end_time: "16:00",
  wednesday_start_time: "08:00",
  wednesday_end_time: "16:00",
  thursday_start_time: "08:00",
  thursday_end_time: "16:00",
  friday_start_time: "08:00",
  friday_end_time: "16:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_klaus.id, time: valid_times[2])

puts "Created Praxisgemeinschaft am Viktualienmarkt"
# -----------------------------Milan Clinic----------------------------------------------

studio_medico_brera = Clinic.new(
  name: "Studio Medico Brera",
  address: "Via Brera 28, 20121 Milano MI, Italy",
  description: "Studio Medico Brera, located in the historic and vibrant Brera district of Milan, provides exceptional healthcare services in a wide array of specialties including cardiology, dermatology, pediatrics, and orthopedics. Our team of highly experienced doctors and specialists are committed to delivering personalized care tailored to each patient's needs.
With a focus on advanced medical technology and a patient-first approach, we offer consultations, diagnostic services, and specialized treatments in a comfortable and professional setting. Our clinic is easily accessible and is designed to ensure that your healthcare journey is as smooth and efficient as possible. At Studio Medico Brera, we believe in fostering long-term relationships with our patients, empowering them to take control of their health with the support of our trusted medical team."
)
studio_medico_brera.photo.attach(io: milano_pic, filename: "milano")
# ----------------------------PASTE HERE--------------------------------------------------

lorenzo = User.new(
  email: "lorenzo.vitale@breramed.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 326 888 9988"
)
lorenzo_profile = Profile.new(
  first_name: "Lorenzo",
  last_name: "Vitale",
  address: studio_medico_brera.address,
  dob: Date.new(1983, 5, 6),
  user: lorenzo
)
lorenzo_profile.photo.attach(io: four, filename: "test")
dr_lorenzo = Doctor.new(user: lorenzo, clinic: studio_medico_brera)
lorenzo.save!
lorenzo_profile.save!
dr_lorenzo.specialties << Specialty.find_by(name: "Endocrinology")
Review.create!(
  rating: 4,
  content: "Clear explanations and good follow-up.",
  doctor: dr_lorenzo,
  user: lorenzo
)
dr_lorenzo.save!
DoctorLanguage.create!(doctor: dr_lorenzo, language: Language.find_by(name: "Italian"))
Schedule.create!(
  doctor_id: dr_lorenzo.id,
  monday_start_time: "12:00",
  monday_end_time: "20:00",
  tuesday_start_time: "12:00",
  tuesday_end_time: "20:00",
  wednesday_start_time: "12:00",
  wednesday_end_time: "20:00",
  thursday_start_time: "12:00",
  thursday_end_time: "20:00",
  friday_start_time: "12:00",
  friday_end_time: "20:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_lorenzo.id, time: valid_times[4])

elena = User.new(
  email: "elena.rizzo@breramed.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 330 456 7890"
)
elena_profile = Profile.new(
  first_name: "Elena",
  last_name: "Rizzo",
  address: studio_medico_brera.address,
  dob: Date.new(1987, 1, 29),
  user: elena
)
elena_profile.photo.attach(io: five, filename: "test")
dr_elena = Doctor.new(user: elena, clinic: studio_medico_brera)
elena.save!
elena_profile.save!
dr_elena.specialties << Specialty.find_by(name: "Pediatrics")
Review.create!(
  rating: 5,
  content: "Great with children. Very gentle.",
  doctor: dr_elena,
  user: elena
)
dr_elena.save!
DoctorLanguage.create!(doctor: dr_elena, language: Language.find_by(name: "Italian"))
Schedule.create!(
  doctor_id: dr_elena.id,
  monday_start_time: "11:00",
  monday_end_time: "19:00",
  tuesday_start_time: "11:00",
  tuesday_end_time: "19:00",
  wednesday_start_time: "11:00",
  wednesday_end_time: "19:00",
  thursday_start_time: "11:00",
  thursday_end_time: "19:00",
  friday_start_time: "11:00",
  friday_end_time: "19:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_elena.id, time: valid_times[3])

luca = User.new(
  email: "luca.desantis@breramed.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 329 111 2233"
)
luca_profile = Profile.new(
  first_name: "Luca",
  last_name: "De Santis",
  address: studio_medico_brera.address,
  dob: Date.new(1982, 6, 17),
  user: luca
)
luca_profile.photo.attach(io: six, filename: "test")
dr_luca = Doctor.new(user: luca, clinic: studio_medico_brera)
luca.save!
luca_profile.save!
dr_luca.specialties << Specialty.find_by(name: "General Medicine")
Review.create!(
  rating: 4,
  content: "Very professional and calm.",
  doctor: dr_luca,
  user: luca
)
dr_luca.save!
DoctorLanguage.create!(doctor: dr_luca, language: Language.find_by(name: "Italian"))
Schedule.create!(
  doctor_id: dr_luca.id,
  monday_start_time: "08:00",
  monday_end_time: "16:00",
  tuesday_start_time: "08:00",
  tuesday_end_time: "16:00",
  wednesday_start_time: "08:00",
  wednesday_end_time: "16:00",
  thursday_start_time: "08:00",
  thursday_end_time: "16:00",
  friday_start_time: "08:00",
  friday_end_time: "16:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_luca.id, time: valid_times[2])

chiara = User.new(
  email: "chiara.leone@breramed.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 331 987 6543"
)
chiara_profile = Profile.new(
  first_name: "Chiara",
  last_name: "Leone",
  address: studio_medico_brera.address,
  dob: Date.new(1990, 11, 5),
  user: chiara
)
chiara_profile.photo.attach(io: seven, filename: "test")
dr_chiara = Doctor.new(user: chiara, clinic: studio_medico_brera)
chiara.save!
chiara_profile.save!
dr_chiara.specialties << Specialty.find_by(name: "Dermatology")
Review.create!(
  rating: 5,
  content: "Kind and attentive dermatologist!",
  doctor: dr_chiara,
  user: chiara
)
dr_chiara.save!
DoctorLanguage.create!(doctor: dr_chiara, language: Language.find_by(name: "Italian"))
Schedule.create!(
  doctor_id: dr_chiara.id,
  monday_start_time: "10:00",
  monday_end_time: "18:00",
  tuesday_start_time: "10:00",
  tuesday_end_time: "18:00",
  wednesday_start_time: "10:00",
  wednesday_end_time: "18:00",
  thursday_start_time: "10:00",
  thursday_end_time: "18:00",
  friday_start_time: "10:00",
  friday_end_time: "18:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_chiara.id, time: valid_times[1])



# ---------------------------Our Created Doctor------------------------------------------
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
  user: alessandro
)
alessandro_profile.photo.attach(io: eight, filename: "test")
dr_alessandro = Doctor.new(
  user: alessandro,
  clinic: studio_medico_brera
)
studio_medico_brera.save!
alessandro.save!
alessandro_profile.save!
dr_alessandro.specialties << Specialty.find_by(name: "Orthopedics")
alessandro_review = Review.new(
  rating: 5,
  content: "He sucks, but cool dude",
  doctor: dr_alessandro,
  user: alessandro
)
alessandro_review.save!
dr_alessandro.save!

DoctorLanguage.create!(
  doctor: dr_alessandro,
  language: Language.find_by(name: "Italian")
)

DoctorLanguage.create!(
  doctor: dr_alessandro,
  language: Language.find_by(name: "English")
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
# --------------------------Our Created Doctor End--------------------------------------------------
# --------------------------Milan Clinic End--------------------------------------------------

scandinavian_health_group = Clinic.new(
  name: "Scandinavian Health Group",
  address: "Drottninggatan 88, 111 36 Stockholm, Sweden"
)
scandinavian_health_group.photo.attach(io: fourpic, filename: "milano")
puts "Created Scandinavian Health Group"

erik = User.new(
  email: "erik.johansson@scandhealthgroup.se",
  password: "password",
  is_doctor: true,
  phone_number: "+46 8 234 5678"
)
erik_profile = Profile.new(
  first_name: "Erik",
  last_name: "Johansson",
  address: "Drottninggatan 88, 111 36 Stockholm, Sweden",
  dob: Date.new(1983, 3, 14),
  user: erik
)
erik_profile.photo.attach(io: nine, filename: "test")
dr_erik = Doctor.new(user: erik, clinic: scandinavian_health_group)
erik.save!
erik_profile.save!
dr_erik.specialties << Specialty.find_by(name: "Psychiatry")
Review.create!(
  rating: 5,
  content: "Fantastic at listening and providing the right advice.",
  doctor: dr_erik,
  user: erik
)
dr_erik.save!
DoctorLanguage.create!(doctor: dr_erik, language: Language.find_by(name: "Swedish"))
Schedule.create!(
  doctor_id: dr_erik.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_erik.id, time: valid_times[3])

# --------------------------------------------------------------------------------------------

centre_sante_jean_jaures = Clinic.new(
  name: "Centre de Santé Jean Jaurès",
  address: "18 Avenue Jean Jaurès, 69007 Lyon, France"
)
centre_sante_jean_jaures.photo.attach(io: fivepic, filename: "milano")
lucie = User.new(
  email: "lucie.bernard@csjeanjaures.fr",
  password: "password",
  is_doctor: true,
  phone_number: "+33 4 72 48 59 60"
)
lucie_profile = Profile.new(
  first_name: "Lucie",
  last_name: "Bernard",
  address: "18 Avenue Jean Jaurès, 69007 Lyon, France",
  dob: Date.new(1985, 6, 22),
  user: lucie
)
lucie_profile.photo.attach(io: ten, filename: "test")
dr_lucie = Doctor.new(user: lucie, clinic: centre_sante_jean_jaures)
lucie.save!
lucie_profile.save!
dr_lucie.specialties << Specialty.find_by(name: "Pulmonology")
Review.create!(
  rating: 5,
  content: "Very thorough and empathetic. I felt taken care of.",
  doctor: dr_lucie,
  user: lucie
)
dr_lucie.save!
DoctorLanguage.create!(doctor: dr_lucie, language: Language.find_by(name: "French"))
Schedule.create!(
  doctor_id: dr_lucie.id,
  monday_start_time: "10:00",
  monday_end_time: "18:00",
  tuesday_start_time: "10:00",
  tuesday_end_time: "18:00",
  wednesday_start_time: "10:00",
  wednesday_end_time: "18:00",
  thursday_start_time: "10:00",
  thursday_end_time: "18:00",
  friday_start_time: "10:00",
  friday_end_time: "18:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_lucie.id, time: valid_times[4])

puts "Created Centre de Santé Jean Jaurès"


# ---------------------------------------------------------------------------------------

medinova_lisboa = Clinic.new(
  name: "Medinova Lisboa",
  address: "Av. da Liberdade 245, 1250-143 Lisboa, Portugal"
)
medinova_lisboa.photo.attach(io: sixpic, filename: "milano")
joao = User.new(
  email: "joao.silva@medinova.pt",
  password: "password",
  is_doctor: true,
  phone_number: "+351 21 234 5678"
)
joao_profile = Profile.new(
  first_name: "João",
  last_name: "Silva",
  address: "Av. da Liberdade 245, 1250-143 Lisboa, Portugal",
  dob: Date.new(1980, 11, 25),
  user: joao
)
joao_profile.photo.attach(io: eleven, filename: "test")
dr_joao = Doctor.new(user: joao, clinic: medinova_lisboa)
joao.save!
joao_profile.save!
dr_joao.specialties << Specialty.find_by(name: "Urology")
Review.create!(
  rating: 5,
  content: "Very knowledgeable and professional.",
  doctor: dr_joao,
  user: joao
)
dr_joao.save!
DoctorLanguage.create!(doctor: dr_joao, language: Language.find_by(name: "Portuguese"))
Schedule.create!(
  doctor_id: dr_joao.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_joao.id, time: valid_times[5])


puts "Created Medinova Lisboa"

# ----------------------------------------------------------------------------------------

medihaus_zurich = Clinic.new(
  name: "MediHaus Zurich",
  address: "Dufourstrasse 45, 8008 Zürich, Switzerland"
)
medihaus_zurich.photo.attach(io: sevenpic, filename: "milano")
lukas = User.new(
  email: "lukas.mueller@medihaus.ch",
  password: "password",
  is_doctor: true,
  phone_number: "+41 44 234 5678"
)
lukas_profile = Profile.new(
  first_name: "Lukas",
  last_name: "Müller",
  address: "Dufourstrasse 45, 8008 Zürich, Switzerland",
  dob: Date.new(1979, 8, 10),
  user: lukas
)
lukas_profile.photo.attach(io: twelve, filename: "test")
dr_lukas = Doctor.new(user: lukas, clinic: medihaus_zurich)
lukas.save!
lukas_profile.save!
dr_lukas.specialties << Specialty.find_by(name: "Endocrinology")
Review.create!(
  rating: 5,
  content: "Excellent care and very patient.",
  doctor: dr_lukas,
  user: lukas
)
dr_lukas.save!
DoctorLanguage.create!(doctor: dr_lukas, language: Language.find_by(name: "German"))
Schedule.create!(
  doctor_id: dr_lukas.id,
  monday_start_time: "10:00",
  monday_end_time: "18:00",
  tuesday_start_time: "10:00",
  tuesday_end_time: "18:00",
  wednesday_start_time: "10:00",
  wednesday_end_time: "18:00",
  thursday_start_time: "10:00",
  thursday_end_time: "18:00",
  friday_start_time: "10:00",
  friday_end_time: "18:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_lukas.id, time: valid_times[6])


puts "Created MediHaus Zurich"

# ------------------------------------------------------------------------------------------



#  ---------------------------london--------------------------------------

london_bridge_hospital = Clinic.create!(
  name: "London Bridge Hospital",
  address: "27 Tooley St, London SE1 2PR",
  description: "Located in the heart of London, London Bridge Hospital offers world-class healthcare services in a range of specialties, including cardiology, neurology, dermatology, and more. Our dedicated team of medical professionals works closely with patients to provide personalized, compassionate care. Whether you need a routine check-up or specialized treatment, London Bridge Hospital is committed to providing the highest standards of care, using state-of-the-art facilities and the latest medical technologies.
Conveniently situated near London Bridge Station, we offer easy access to both local and international patients. Our team of experienced doctors and specialists are available for consultations, diagnostic tests, and treatments. We pride ourselves on our commitment to patient safety, comfort, and overall well-being, ensuring that every visit to our hospital is as smooth and stress-free as possible."
)
london_bridge_hospital.photo.attach(io: london_bridge_pic, filename: "london_bridge")
#------------------------- PASTE HERE -------------------------------------

priya = User.new(
  email: "priya.ranganathan@lbhospital.uk",
  password: "password",
  is_doctor: true,
  phone_number: "+44 7911 901234"
)
priya_profile = Profile.new(
  first_name: "Priya",
  last_name: "Ranganathan",
  address: london_bridge_hospital.address,
  dob: Date.new(1982, 11, 11),
  user: priya
)
priya_profile.photo.attach(io: thirteen, filename: "test")
dr_priya = Doctor.new(user: priya, clinic: london_bridge_hospital)
priya.save!
priya_profile.save!
dr_priya.specialties << Specialty.find_by(name: "Rheumatology")
Review.create!(
  rating: 5,
  content: "Helped me manage my chronic pain brilliantly.",
  doctor: dr_priya,
  user: priya
)
dr_priya.save!
DoctorLanguage.create!(doctor: dr_priya, language: Language.find_by(name: "English"))
Schedule.create!(
  doctor_id: dr_priya.id,
  monday_start_time: "09:30",
  monday_end_time: "17:30",
  tuesday_start_time: "09:30",
  tuesday_end_time: "17:30",
  wednesday_start_time: "09:30",
  wednesday_end_time: "17:30",
  thursday_start_time: "09:30",
  thursday_end_time: "17:30",
  friday_start_time: "09:30",
  friday_end_time: "17:30"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_priya.id, time: valid_times[8])

hassan = User.new(
  email: "hassan.elsayed@lbhospital.uk",
  password: "password",
  is_doctor: true,
  phone_number: "+44 7911 890123"
)
hassan_profile = Profile.new(
  first_name: "Hassan",
  last_name: "El-Sayed",
  address: london_bridge_hospital.address,
  dob: Date.new(1977, 5, 18),
  user: hassan
)
hassan_profile.photo.attach(io: fourteen, filename: "test")
dr_hassan = Doctor.new(user: hassan, clinic: london_bridge_hospital)
hassan.save!
hassan_profile.save!
dr_hassan.specialties << Specialty.find_by(name: "Endocrinology")
Review.create!(
  rating: 5,
  content: "Very thorough and explained everything clearly.",
  doctor: dr_hassan,
  user: hassan
)
dr_hassan.save!
DoctorLanguage.create!(doctor: dr_hassan, language: Language.find_by(name: "English"))
Schedule.create!(
  doctor_id: dr_hassan.id,
  monday_start_time: "10:00",
  monday_end_time: "18:00",
  tuesday_start_time: "10:00",
  tuesday_end_time: "18:00",
  wednesday_start_time: "10:00",
  wednesday_end_time: "18:00",
  thursday_start_time: "10:00",
  thursday_end_time: "18:00",
  friday_start_time: "10:00",
  friday_end_time: "18:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_hassan.id, time: valid_times[7])

daniel = User.new(
  email: "daniel.chen@lbhospital.uk",
  password: "password",
  is_doctor: true,
  phone_number: "+44 7911 678901"
)
daniel_profile = Profile.new(
  first_name: "Daniel",
  last_name: "Chen",
  address: london_bridge_hospital.address,
  dob: Date.new(1980, 6, 7),
  user: daniel
)
daniel_profile.photo.attach(io: fifteen, filename: "test")
dr_daniel = Doctor.new(user: daniel, clinic: london_bridge_hospital)
daniel.save!
daniel_profile.save!
dr_daniel.specialties << Specialty.find_by(name: "Gastroenterology")
Review.create!(
  rating: 4,
  content: "Efficient and detail-oriented.",
  doctor: dr_daniel,
  user: daniel
)
dr_daniel.save!
DoctorLanguage.create!(doctor: dr_daniel, language: Language.find_by(name: "English"))
Schedule.create!(
  doctor_id: dr_daniel.id,
  monday_start_time: "08:30",
  monday_end_time: "16:30",
  tuesday_start_time: "08:30",
  tuesday_end_time: "16:30",
  wednesday_start_time: "08:30",
  wednesday_end_time: "16:30",
  thursday_start_time: "08:30",
  thursday_end_time: "16:30",
  friday_start_time: "08:30",
  friday_end_time: "16:30"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_daniel.id, time: valid_times[6])

emily = User.new(
  email: "emily.thompson@lbhospital.uk",
  password: "password",
  is_doctor: true,
  phone_number: "+44 7911 789012"
)
emily_profile = Profile.new(
  first_name: "Emily",
  last_name: "Thompson",
  address: london_bridge_hospital.address,
  dob: Date.new(1984, 12, 9),
  user: emily
)
emily_profile.photo.attach(io: sixteen, filename: "test")
dr_emily = Doctor.new(user: emily, clinic: london_bridge_hospital)
emily.save!
emily_profile.save!
dr_emily.specialties << Specialty.find_by(name: "Obstetrics and Gynecology")
Review.create!(
  rating: 5,
  content: "She made me feel completely at ease.",
  doctor: dr_emily,
  user: emily
)
dr_emily.save!
DoctorLanguage.create!(doctor: dr_emily, language: Language.find_by(name: "English"))
Schedule.create!(
  doctor_id: dr_emily.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_emily.id, time: valid_times[5])

# ------------------------OUR CREATED DOCTOR ------------------------------

nathaniel = User.new(
  email: "nathaniel.wright@lbhospital.uk",
  password: "password",
  is_doctor: true,
  phone_number: "+44 7911 234567"
)

nathaniel_profile = Profile.new(
  first_name: "Nathaniel",
  last_name: "Wright",
  address: "27 Tooley St, London SE1 2PR, UK",
  dob: Date.new(1981, 5, 15),
  user: nathaniel
)
nathaniel_profile.photo.attach(io: seventeen, filename: "test")
dr_nathaniel = Doctor.new(
  user: nathaniel,
  clinic: london_bridge_hospital
)
# london_bridge_hospital.save!
nathaniel.save!
nathaniel_profile.save!
dr_nathaniel.specialties << Specialty.find_by(name: "Endocrinology")
dr_nathaniel.save!


DoctorLanguage.create!(
  doctor: dr_nathaniel,
  language: Language.find_by(name: "English")
)

Schedule.create!(
  doctor_id: dr_nathaniel.id,
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

Appointment.create!(
  user_id: patient.id,
  doctor_id: dr_nathaniel.id,
  time: valid_times[1]
)

#  For showing
#  Disease: Diabetes with clinic search
#  Doctor needs to have a specialty in "Endocrinology" and/or "General Medicine"
#  Doctor needs to speak english
puts "Created London Bridge Hospital"
# -------------------------------------------------------------------------

centrum_medyczne_nowa_zdrowie = Clinic.new(
  name: "Centrum Medyczne Nowa Zdrowie",
  address: "ul. Marszałkowska 45/49, 00-648 Warszawa, Poland"
)
centrum_medyczne_nowa_zdrowie.photo.attach(io: eightpic, filename: "milano")
krzysztof = User.new(
  email: "krzysztof.nowak@cmnowazdrowie.pl",
  password: "password",
  is_doctor: true,
  phone_number: "+48 22 234 5678"
)
krzysztof_profile = Profile.new(
  first_name: "Krzysztof",
  last_name: "Nowak",
  address: "ul. Marszałkowska 45/49, 00-648 Warszawa, Poland",
  dob: Date.new(1974, 10, 2),
  user: krzysztof
)
krzysztof_profile.photo.attach(io: eighteen, filename: "test")
dr_krzysztof = Doctor.new(user: krzysztof, clinic: centrum_medyczne_nowa_zdrowie)
krzysztof.save!
krzysztof_profile.save!
dr_krzysztof.specialties << Specialty.find_by(name: "Rheumatology")
Review.create!(
  rating: 4,
  content: "Very professional. Helped manage my arthritis well.",
  doctor: dr_krzysztof,
  user: krzysztof
)
dr_krzysztof.save!
DoctorLanguage.create!(doctor: dr_krzysztof, language: Language.find_by(name: "Polish"))
Schedule.create!(
  doctor_id: dr_krzysztof.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_krzysztof.id, time: valid_times[8])

puts "Created Centrum Medyczne Nowa Zdrowie"
# -----------------------------------------------------------------------------

cabinet_medical_parc = Clinic.new(
  name: "Cabinet Médical du Parc",
  address: "7 Rue du Parc, 67000 Strasbourg, France"
)
cabinet_medical_parc.photo.attach(io: ninepic, filename: "milano")
laurent = User.new(
  email: "laurent.petit@cabinetmedicalparc.fr",
  password: "password",
  is_doctor: true,
  phone_number: "+33 3 88 234 567"
)
laurent_profile = Profile.new(
  first_name: "Laurent",
  last_name: "Petit",
  address: "7 Rue du Parc, 67000 Strasbourg, France",
  dob: Date.new(1981, 9, 18),
  user: laurent
)
laurent_profile.photo.attach(io: nineteen, filename: "test")
dr_laurent = Doctor.new(user: laurent, clinic: cabinet_medical_parc)
laurent.save!
laurent_profile.save!
dr_laurent.specialties << Specialty.find_by(name: "General Medicine")
Review.create!(
  rating: 5,
  content: "Friendly and professional doctor. Highly recommended.",
  doctor: dr_laurent,
  user: laurent
)
dr_laurent.save!
DoctorLanguage.create!(doctor: dr_laurent, language: Language.find_by(name: "French"))
Schedule.create!(
  doctor_id: dr_laurent.id,
  monday_start_time: "08:30",
  monday_end_time: "16:30",
  tuesday_start_time: "08:30",
  tuesday_end_time: "16:30",
  wednesday_start_time: "08:30",
  wednesday_end_time: "16:30",
  thursday_start_time: "08:30",
  thursday_end_time: "16:30",
  friday_start_time: "08:30",
  friday_end_time: "16:30"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_laurent.id, time: valid_times[9])


puts "Created Cabinet Médical du Parc"
# --------------------------------------------------------------------------------

centre_hospitalier_sainte_claire = Clinic.new(
  name: "Centre Hospitalier Sainte-Claire",
  address: "Rue de Lausanne 43, 1201 Genève, Switzerland"
)
centre_hospitalier_sainte_claire.photo.attach(io: tenpic, filename: "milano")
puts "Created Centre Hospitalier Sainte-Claire"
#

clinica_santa_chiara_torino = Clinic.new(
  name: "Clinica Santa Chiara Torino",
  address: "Via Giuseppe Garibaldi 12, 10122 Torino TO, Italy"
)
clinica_santa_chiara_torino.photo.attach(io: elevenpic, filename: "milano")
matteo = User.new(
  email: "matteo.giordano@clinicasantachiara.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 011 234 5678"
)
matteo_profile = Profile.new(
  first_name: "Matteo",
  last_name: "Giordano",
  address: "Via Giuseppe Garibaldi 12, 10122 Torino TO, Italy",
  dob: Date.new(1978, 4, 10),
  user: matteo
)
matteo_profile.photo.attach(io: twenty, filename: "test")
dr_matteo = Doctor.new(user: matteo, clinic: clinica_santa_chiara_torino)
matteo.save!
matteo_profile.save!
dr_matteo.specialties << Specialty.find_by(name: "Cardiology")
Review.create!(
  rating: 5,
  content: "Very professional and helpful.",
  doctor: dr_matteo,
  user: matteo
)
dr_matteo.save!
DoctorLanguage.create!(doctor: dr_matteo, language: Language.find_by(name: "Italian"))
Schedule.create!(
  doctor_id: dr_matteo.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_matteo.id, time: valid_times[7])

puts "Created Clinica Santa Chiara Torino"
# --------------------------------------------------------------------------------

hausaerztezentrum_koeln = Clinic.new(
  name: "Hausärztezentrum Altstadt Köln",
  address: "Alter Markt 9, 50667 Köln, Germany"
)
hausaerztezentrum_koeln.photo.attach(io: twelvepic, filename: "milano")
anna = User.new(
  email: "anna.becker@hausarztzentrum-koeln.de",
  password: "password",
  is_doctor: true,
  phone_number: "+49 221 234 5678"
)
anna_profile = Profile.new(
  first_name: "Anna",
  last_name: "Becker",
  address: "Alter Markt 9, 50667 Köln, Germany",
  dob: Date.new(1984, 11, 1),
  user: anna
)
anna_profile.photo.attach(io: twentyone, filename: "test")
dr_anna = Doctor.new(user: anna, clinic: hausaerztezentrum_koeln)
anna.save!
anna_profile.save!
dr_anna.specialties << Specialty.find_by(name: "General Medicine")
Review.create!(
  rating: 5,
  content: "Very caring doctor, great communication.",
  doctor: dr_anna,
  user: anna
)
dr_anna.save!
DoctorLanguage.create!(doctor: dr_anna, language: Language.find_by(name: "German"))
Schedule.create!(
  doctor_id: dr_anna.id,
  monday_start_time: "08:00",
  monday_end_time: "16:00",
  tuesday_start_time: "08:00",
  tuesday_end_time: "16:00",
  wednesday_start_time: "08:00",
  wednesday_end_time: "16:00",
  thursday_start_time: "08:00",
  thursday_end_time: "16:00",
  friday_start_time: "08:00",
  friday_end_time: "16:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_anna.id, time: valid_times[6])

puts "Created Hausärztezentrum Altstadt Köln"
# --------------------------------------------------------------------------------

prahamed_specialist_center = Clinic.new(
  name: "PrahaMed Specialist Center",
  address: "Vodičkova 28, 110 00 Praha 1, Czech Republic"
)
prahamed_specialist_center.photo.attach(io: thirteenpic, filename: "milano")
jan = User.new(
  email: "jan.novak@prahamed.cz",
  password: "password",
  is_doctor: true,
  phone_number: "+420 221 234 567"
)
jan_profile = Profile.new(
  first_name: "Jan",
  last_name: "Novak",
  address: "Vodičkova 28, 110 00 Praha 1, Czech Republic",
  dob: Date.new(1975, 7, 8),
  user: jan
)
jan_profile.photo.attach(io: twentytwo, filename: "test")
dr_jan = Doctor.new(user: jan, clinic: prahamed_specialist_center)
jan.save!
jan_profile.save!
dr_jan.specialties << Specialty.find_by(name: "Orthopedics")
Review.create!(
  rating: 5,
  content: "Excellent care and treatment for my injury.",
  doctor: dr_jan,
  user: jan
)
dr_jan.save!
DoctorLanguage.create!(doctor: dr_jan, language: Language.find_by(name: "Czech"))
Schedule.create!(
  doctor_id: dr_jan.id,
  monday_start_time: "08:30",
  monday_end_time: "16:30",
  tuesday_start_time: "08:30",
  tuesday_end_time: "16:30",
  wednesday_start_time: "08:30",
  wednesday_end_time: "16:30",
  thursday_start_time: "08:30",
  thursday_end_time: "16:30",
  friday_start_time: "08:30",
  friday_end_time: "16:30"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_jan.id, time: valid_times[5])

puts "Created PrahaMed Specialist Center"
# -----------------------------------------------------------------------------

centro_medico_la_barceloneta = Clinic.new(
  name: "Centro Médico La Barceloneta",
  address: "Carrer de la Maquinista 10, 08003 Barcelona, Spain"
)
centro_medico_la_barceloneta.photo.attach(io: fourteenpic, filename: "milano")
alejandro = User.new(
  email: "alejandro.gonzalez@cmbarceloneta.es",
  password: "password",
  is_doctor: true,
  phone_number: "+34 93 234 5678"
)
alejandro_profile = Profile.new(
  first_name: "Alejandro",
  last_name: "González",
  address: "Carrer de la Maquinista 10, 08003 Barcelona, Spain",
  dob: Date.new(1980, 5, 30),
  user: alejandro
)
alejandro_profile.photo.attach(io: twentythree, filename: "test")
dr_alejandro = Doctor.new(user: alejandro, clinic: centro_medico_la_barceloneta)
alejandro.save!
alejandro_profile.save!
dr_alejandro.specialties << Specialty.find_by(name: "Pulmonology")
Review.create!(
  rating: 5,
  content: "Very kind, helpful, and explained everything clearly.",
  doctor: dr_alejandro,
  user: alejandro
)
dr_alejandro.save!
DoctorLanguage.create!(doctor: dr_alejandro, language: Language.find_by(name: "Spanish"))
Schedule.create!(
  doctor_id: dr_alejandro.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_alejandro.id, time: valid_times[4])

puts "Created Centro Médico La Barceloneta"
# ----------------------------------------------------------------------------------------

clinique_du_canal_saintmartin = Clinic.new(
  name: "Clinique du Canal Saint-Martin",
  address: "92 Quai de Jemmapes, 75010 Paris, France"
)
clinique_du_canal_saintmartin.photo.attach(io: fifteenpic, filename: "milano")
lucien = User.new(
  email: "lucien.bernard@canal-saint-martin.fr",
  password: "password",
  is_doctor: true,
  phone_number: "+33 1 44 53 12 34"
)
lucien_profile = Profile.new(
  first_name: "Lucien",
  last_name: "Bernard",
  address: "92 Quai de Jemmapes, 75010 Paris, France",
  dob: Date.new(1978, 6, 23),
  user: lucien
)
lucien_profile.photo.attach(io: twentyfour, filename: "test")
dr_lucien = Doctor.new(user: lucien, clinic: clinique_du_canal_saintmartin)
lucien.save!
lucien_profile.save!
dr_lucien.specialties << Specialty.find_by(name: "Ophthalmology")
Review.create!(
  rating: 5,
  content: "Excellent, very kind and knowledgeable.",
  doctor: dr_lucien,
  user: lucien
)
dr_lucien.save!
DoctorLanguage.create!(doctor: dr_lucien, language: Language.find_by(name: "French"))
Schedule.create!(
  doctor_id: dr_lucien.id,
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
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_lucien.id, time: valid_times[3])

puts "Created Clinique du Canal Saint-Martin"
# ----------------------------------------------------------------------------------

centro_medico_firenze = Clinic.new(
  name: "Centro Medico Firenze",
  address: "Viale dei Mille 30, 50131 Firenze FI, Italy"
)
centro_medico_firenze.photo.attach(io: sixteenpic, filename: "milano")
isabella = User.new(
  email: "isabella.rossi@centromedicofirenze.it",
  password: "password",
  is_doctor: true,
  phone_number: "+39 055 234 5678"
)
isabella_profile = Profile.new(
  first_name: "Isabella",
  last_name: "Rossi",
  address: "Viale dei Mille 30, 50131 Firenze FI, Italy",
  dob: Date.new(1985, 2, 12),
  user: isabella
)
isabella_profile.photo.attach(io: twentyfive, filename: "test")
dr_isabella = Doctor.new(user: isabella, clinic: centro_medico_firenze)
isabella.save!
isabella_profile.save!
dr_isabella.specialties << Specialty.find_by(name: "Cardiology")
Review.create!(
  rating: 5,
  content: "Very professional, explained everything clearly.",
  doctor: dr_isabella,
  user: isabella
)
dr_isabella.save!
DoctorLanguage.create!(doctor: dr_isabella, language: Language.find_by(name: "Italian"))
Schedule.create!(
  doctor_id: dr_isabella.id,
  monday_start_time: "08:30",
  monday_end_time: "16:30",
  tuesday_start_time: "08:30",
  tuesday_end_time: "16:30",
  wednesday_start_time: "08:30",
  wednesday_end_time: "16:30",
  thursday_start_time: "08:30",
  thursday_end_time: "16:30",
  friday_start_time: "08:30",
  friday_end_time: "16:30"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_isabella.id, time: valid_times[2])

puts "Created Centro Medico Firenze"
# -----------------------------------------------------------------------------

medpoint_antwerpen = Clinic.new(
  name: "MedPoint Antwerpen",
  address: "Mechelsesteenweg 64, 2018 Antwerpen, Belgium"
)
medpoint_antwerpen.photo.attach(io: seventeenpic, filename: "milano")
emma = User.new(
  email: "emma.dewit@medpoint.be",
  password: "password",
  is_doctor: true,
  phone_number: "+32 3 234 5678"
)
emma_profile = Profile.new(
  first_name: "Emma",
  last_name: "De Wit",
  address: "Mechelsesteenweg 64, 2018 Antwerpen, Belgium",
  dob: Date.new(1982, 9, 4),
  user: emma
)
emma_profile.photo.attach(io: twentysix, filename: "test")
dr_emma = Doctor.new(user: emma, clinic: medpoint_antwerpen)
emma.save!
emma_profile.save!
dr_emma.specialties << Specialty.find_by(name: "Dermatology")
Review.create!(
  rating: 5,
  content: "Very thorough and professional. Highly recommend.",
  doctor: dr_emma,
  user: emma
)
dr_emma.save!
DoctorLanguage.create!(doctor: dr_emma, language: Language.find_by(name: "Dutch"))
Schedule.create!(
  doctor_id: dr_emma.id,
  monday_start_time: "10:00",
  monday_end_time: "18:00",
  tuesday_start_time: "10:00",
  tuesday_end_time: "18:00",
  wednesday_start_time: "10:00",
  wednesday_end_time: "18:00",
  thursday_start_time: "10:00",
  thursday_end_time: "18:00",
  friday_start_time: "10:00",
  friday_end_time: "18:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_emma.id, time: valid_times[1])

puts "Created MedPoint Antwerpen"
# -------------------------------------------------------------------------------


klinik_am_schlossgarten = Clinic.new(
  name: "Klinik am Schlossgarten",
  address: "Schlossstraße 3, 70176 Stuttgart, Germany"
)
klinik_am_schlossgarten.photo.attach(io: eighteenpic, filename: "milano")
matthias = User.new(
  email: "matthias.schmidt@klinik-schlossgarten.de",
  password: "password",
  is_doctor: true,
  phone_number: "+49 711 234 5678"
)
matthias_profile = Profile.new(
  first_name: "Matthias",
  last_name: "Schmidt",
  address: "Schlossstraße 3, 70176 Stuttgart, Germany",
  dob: Date.new(1973, 1, 15),
  user: matthias
)
matthias_profile.photo.attach(io: twentyseven, filename: "test")
dr_matthias = Doctor.new(user: matthias, clinic: klinik_am_schlossgarten)
matthias.save!
matthias_profile.save!
dr_matthias.specialties << Specialty.find_by(name: "Surgery")
Review.create!(
  rating: 5,
  content: "Excellent surgeon, very professional.",
  doctor: dr_matthias,
  user: matthias
)
dr_matthias.save!
DoctorLanguage.create!(doctor: dr_matthias, language: Language.find_by(name: "German"))
Schedule.create!(
  doctor_id: dr_matthias.id,
  monday_start_time: "08:00",
  monday_end_time: "16:00",
  tuesday_start_time: "08:00",
  tuesday_end_time: "16:00",
  wednesday_start_time: "08:00",
  wednesday_end_time: "16:00",
  thursday_start_time: "08:00",
  thursday_end_time: "16:00",
  friday_start_time: "08:00",
  friday_end_time: "16:00"
)
Appointment.create!(user_id: patients.sample.id, doctor_id: dr_matthias.id, time: valid_times[0])

puts "Created Klinik am Schlossgarten"
# -------------------------------------------------------------------------------

puts "Created #{Clinic.count} clinics."
# ----------------------------------------------------------------------------
