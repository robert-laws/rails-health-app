class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.create(hospital_params)      
    redirect_to @hospital
  end

  private

  def hospital_params
    params.require(:hospital).permit(:name, :years_worked, :area, :doctor_id, category_ids: [])
  end
end