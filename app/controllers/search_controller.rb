class SearchController < ApplicationController
  before_action :ensure_profile

  def index
    query = params[:query].to_s.downcase
    search_type = params[:search_type]
    user_language_ids = current_user.profile.languages.pluck(:id)
    user_language_ids = Language.all.pluck(:id) if user_language_ids.empty?

    if search_type == 'clinics'
      @results = Clinic.joins(doctors: [:specialties, { doctor_languages: :language }])
                       .where(doctor_languages: { language_id: user_language_ids })
                       .where('LOWER(clinics.name) LIKE :q OR LOWER(specialties.name) LIKE :q', q: "%#{query}%")
                       .distinct
                       .page(params[:page])
                       .per(9)

    elsif search_type == 'doctors'
      @results = Doctor.joins(:user, :profile, :specialties, doctor_languages: :language)
                 .joins(specialties: :diseases)
                 .where(doctor_languages: { language_id: user_language_ids })
                 .where(
                   'LOWER(specialties.name) LIKE :q OR LOWER(users.email) LIKE :q OR ' \
                   'LOWER(users.phone_number) LIKE :q OR LOWER(profiles.first_name) LIKE :q OR ' \
                   'LOWER(profiles.last_name) LIKE :q OR LOWER(diseases.name) LIKE :q',
                   q: "%#{query}%"
                 )
                 .distinct
                 .page(params[:page])
                 .per(9)
    else
      @results = []
    end
  end

  private

  def ensure_profile
    redirect_to new_profile_path, alert: "Please complete your profile before searching." unless current_user.profile.present?
  end
end
