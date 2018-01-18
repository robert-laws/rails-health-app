class Patient < ApplicationRecord
  belongs_to :insurance_card
  has_many :appointments
  has_many :doctors, through: :appointments

  def insurance_card_name=(name)
    self.insurance_card = InsuranceCard.find_or_create_by(name: name)
  end

  def insurance_card_name
    self.insurance_card.name
  end
end
