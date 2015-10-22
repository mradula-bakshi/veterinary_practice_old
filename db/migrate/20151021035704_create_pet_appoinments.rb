class CreatePetAppoinments < ActiveRecord::Migration
  def change
    create_table :pet_appoinments do |t|
      t.datetime :visit_date
      t.string :pet
      t.string :customer
      t.boolean :reminder_required
      t.string :reason_to_visit
      t.integer :vat_doctor_id, references: :vat_doctors

      t.timestamps
    end
  end
end
