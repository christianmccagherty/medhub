class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = Appointment.where(user: current_user)
  end

  def create
    doctor = Doctor.find(params[:doctor_id])
    appointment = doctor.appointments.new(appointment_params)
    appointment.user_id = current_user.id

    if appointment.save
      flash[:notice] = "Appointment booked successfully"
      redirect_to doctor_path(doctor)
    else
      flash[:alert] = "Failed to book appointment"
      redirect_to doctor_path(doctor)
    end
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    @appointment.save
    redirect_to appointments_path
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path, status: :see_other
  end
  private

  def appointment_params
    params.require(:appointment).permit(:time)
  end
end
