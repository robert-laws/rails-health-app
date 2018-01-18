class InsuranceCardsController < ApplicationController
  def index
    @insurance_cards = InsuranceCard.all
  end
end