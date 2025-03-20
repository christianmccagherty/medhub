class SearchController < ApplicationController
  def index
    query = params[:query].downcase

    if params[:search_clinics] == '1'
      # Find clinics that have doctors whose specialties match the search term
      @results = Clinic.joins(doctors: :specialties)
                       .where('LOWER(specialties.name) LIKE ?', "%#{query}%")
                       .distinct
    else
      # Find doctors where specialty name or doctor name/email matches the query
      @results = Doctor.joins(:specialties, :user)
                       .where('LOWER(specialties.name) LIKE :q OR LOWER(users.email) LIKE :q OR LOWER(users.first_name) LIKE :q OR LOWER(users.last_name) LIKE :q', q: "%#{query}%")
                       .distinct
    end
  end
end
