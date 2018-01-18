class CreateInsuranceCards < ActiveRecord::Migration[5.1]
  def change
    create_table :insurance_cards do |t|
      t.string :name

      t.timestamps
    end
  end
end
