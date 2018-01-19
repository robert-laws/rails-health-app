class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
    @doctor.hospitals.build
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to @doctor
    else
      render :new
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :experience, hospitals_attributes: [:name, :years_worked, :area])
  end
end
