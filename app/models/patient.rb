class Patient < ApplicationRecord
  has_many :insurance_cards
  has_many :appointments
  has_many :doctors, through: :appointments

  accepts_nested_attributes_for :insurance_cards, reject_if: lambda { |attributes| attributes[:name].blank? }
end
