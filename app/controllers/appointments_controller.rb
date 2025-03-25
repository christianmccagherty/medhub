class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = Appointment.where(user: current_user)
  end

  def create
    if params[:confirm] == "true"
      @appointment = Appointment.new(appointment_params)
      @appointment.user = current_user

      if @appointment.save
        redirect_to appointments_path
      else
        render :confirm
      end

    else
      doctor = Doctor.find(params[:doctor_id])
      @appointment = doctor.appointments.new(appointment_params)
      @appointment.user_id = current_user.id

      render :confirm
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
    params.require(:appointment).permit(:time, :doctor_id)
  end
end
