class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.integer :insurance_card_id

      t.timestamps
    end
  end
end
