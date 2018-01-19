class CreateHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.integer :years_worked
      t.string :area
      t.belongs_to :doctor
    end
  end
end
