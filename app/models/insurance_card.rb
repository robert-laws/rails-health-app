class InsuranceCard < ApplicationRecord
  belongs_to :patient

  validates :patient_id, presence: true
  validates :name, presence: true, length: { minimum: 4 }
end
