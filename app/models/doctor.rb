class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  has_many :hospitals
  # accepts_nested_attributes_for :hospitals

  def hospitals_attributes=(hospital_attributes)
    hospital_attributes.values.each do |hospital_attribute|
      hospital = Hospital.find_or_create_by(hospital_attribute)
      self.hospitals << hospital
    end
  end
end
