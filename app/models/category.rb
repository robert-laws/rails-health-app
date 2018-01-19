class Category < ActiveRecord::Base
  has_many :hospital_categories
  has_many :hospitals, through: :hospital_categories
end