class ClinicsController < ApplicationController

  def show
    @clinic = Clinic.find(params[:id])
    @markers = [
      {
        lat: @clinic.latitude,
        lng: @clinic.longitude
      }
    ]
  end

  def index
    @clinics = Clinic.all
  end
end
