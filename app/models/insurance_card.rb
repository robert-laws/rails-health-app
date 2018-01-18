class InsuranceCard < ApplicationRecord
  has_many :patients

  # validates :patient_id, presence: true
  # validates :name, presence: true, length: { minimum: 4 }
end
