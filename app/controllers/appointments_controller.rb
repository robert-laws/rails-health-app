class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(apppointment_params)
    if @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    @appointments = Appointment.all
  end

  private

  def apppointment_params
    params.require(:appointment).permit(:month, :day, :doctor_id, :patient_id)
  end
end
