class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    @insurance_cards = @patient.insurance_cards
  end

  def new
    @patient = Patient.new
    @patient.insurance_cards.build
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      flash[:success] = "Welcome to the Health App!"
      redirect_to @patient
    else
      render :new
    end
  end

  private

    def patient_params
      params.require(:patient).permit(:name, :age, insurance_cards_attributes: [:name])
    end
end
