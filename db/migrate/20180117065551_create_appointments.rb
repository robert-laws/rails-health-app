class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :month
      t.integer :day
      t.belongs_to :doctor
      t.belongs_to :patient
      t.timestamps
    end
  end
end
