class ClinicsController < ApplicationController

  def show
    @clinic = Clinic.find(params[:id])
  end

  def index
    @clinics = Clinic.all
  end

  def test
    # this is only to test out designs, will be deleted later
    @clinic = Clinic.find(21)
  end
end
