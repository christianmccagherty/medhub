class SearchController < ApplicationController
  def index
    if params[:search_clinics] == '1'
      @results = Clinic.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @results = Doctor.where("speciality ILIKE ? OR user_id IN (SELECT id FROM users WHERE email ILIKE ?)", "%#{params[:query]}%", "%#{params[:query]}%")
    end
  end
end
