class SearchController < ApplicationController
  def index
    query = params[:query].to_s.downcase
    search_type = params[:search_type] # 'clinics' or 'doctors'

    if search_type == 'clinics'
      # Search clinics through associated doctors' specialties
      @results = Clinic.joins(doctors: :specialties)
                       .where('LOWER(specialties.name) LIKE ?', "%#{query}%")
                       .distinct

    elsif search_type == 'doctors'
      # Search doctors via specialties and user email
      @results = Doctor.joins(:specialties, :user)
                       .where('LOWER(specialties.name) LIKE :q OR LOWER(users.email) LIKE :q', q: "%#{query}%")
                       .distinct
    else
      @results = []
    end
  end
end
