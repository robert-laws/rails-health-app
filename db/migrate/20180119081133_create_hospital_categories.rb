class CreateHospitalCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :hospital_categories do |t|
      t.belongs_to :hospital
      t.belongs_to :category
    end
  end
end
