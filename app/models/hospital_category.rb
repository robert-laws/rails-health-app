class HospitalCategory < ActiveRecord::Base
  belongs_to :hospital
  belongs_to :category
end