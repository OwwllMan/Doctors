class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoitments do |t|
      t.datetime :date
      t.references :doctor, foreingn_key: true
      t.references :patient, foreingn_key: true
      t.timestamps
    end
  end
end
