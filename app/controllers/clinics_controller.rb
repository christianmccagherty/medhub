class ClinicsController < ApplicationController

  def show
    @clinic = Clinic.find(params[:id])
  end

  def index
    @clinics = Clinic.all
  end
end
