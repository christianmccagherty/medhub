class Doctor < ApplicationRecord
  has_neighbors :embedding
  after_create :set_embedding
  belongs_to :user
  belongs_to :clinic
  has_many :appointments
  has_one :schedule
  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
  has_many :doctor_languages, dependent: :destroy
  has_many :languages, through: :doctor_languages
  has_many :reviews
  delegate :full_name, to: :user
  delegate :address, to: :clinic

  def average_doctor_rating
    return "unrated" if reviews.size == 0

    rating = reviews.map(&:rating).sum / reviews.size
    rating.nil? ? "unrated" : rating
  end

  def generate_available_slots(days_ahead = 14)
    return [] unless schedule

    slots = []

    (0..days_ahead).each do |offset|
      date = Date.today + offset
      weekday = date.strftime("%A").downcase

      start_time_str = schedule["#{weekday}_start_time"]
      end_time_str   = schedule["#{weekday}_end_time"]
      next if start_time_str.blank? || end_time_str.blank?

      start_time = Time.zone.parse("#{date} #{start_time_str}")
      end_time   = Time.zone.parse("#{date} #{end_time_str}")

      current_time = start_time
      while current_time < end_time
        slots << current_time
        current_time += 30.minutes
      end
    end

    slots
  end

  private

  def set_embedding
    client = OpenAI::Client.new
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        input:
          "Doctor: #{full_name}.
          Specialty: #{specialties.pluck(:name).join(" ")}.
          Language: #{languages.pluck(:name).join(" ")}.
          Address: #{address}.
          Clinic: #{clinic}"
      }
    )
    embedding = response['data'][0]['embedding']
    update(embedding: embedding)
  end
end
